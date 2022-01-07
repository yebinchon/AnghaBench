
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u64 ;
typedef int u32 ;
struct ocrdma_pd {int id; } ;
struct TYPE_4__ {int remote_wr; int remote_rd; int local_wr; int local_rd; int remote_atomic; int lkey; void* len; void* va; int fbo; int pbe_size; } ;
struct ib_mr {int rkey; int lkey; } ;
struct ocrdma_mr {TYPE_1__ hwmr; struct ib_mr ibmr; int umem; } ;
struct ocrdma_dev {int dummy; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int device; } ;


 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int IB_ACCESS_LOCAL_WRITE ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 int IB_ACCESS_REMOTE_READ ;
 int IB_ACCESS_REMOTE_WRITE ;
 scalar_t__ IS_ERR (int ) ;
 int PAGE_SIZE ;
 int build_user_pbes (struct ocrdma_dev*,struct ocrdma_mr*,int ) ;
 struct ocrdma_dev* get_ocrdma_dev (int ) ;
 struct ocrdma_pd* get_ocrdma_pd (struct ib_pd*) ;
 int ib_umem_get (struct ib_udata*,void*,void*,int,int ) ;
 int ib_umem_offset (int ) ;
 int ib_umem_page_count (int ) ;
 int kfree (struct ocrdma_mr*) ;
 struct ocrdma_mr* kzalloc (int,int ) ;
 int ocrdma_build_pbl_tbl (struct ocrdma_dev*,TYPE_1__*) ;
 int ocrdma_free_mr_pbl_tbl (struct ocrdma_dev*,TYPE_1__*) ;
 int ocrdma_get_pbl_info (struct ocrdma_dev*,struct ocrdma_mr*,int ) ;
 int ocrdma_reg_mr (struct ocrdma_dev*,TYPE_1__*,int ,int) ;

struct ib_mr *ocrdma_reg_user_mr(struct ib_pd *ibpd, u64 start, u64 len,
     u64 usr_addr, int acc, struct ib_udata *udata)
{
 int status = -ENOMEM;
 struct ocrdma_dev *dev = get_ocrdma_dev(ibpd->device);
 struct ocrdma_mr *mr;
 struct ocrdma_pd *pd;
 u32 num_pbes;

 pd = get_ocrdma_pd(ibpd);

 if (acc & IB_ACCESS_REMOTE_WRITE && !(acc & IB_ACCESS_LOCAL_WRITE))
  return ERR_PTR(-EINVAL);

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr)
  return ERR_PTR(status);
 mr->umem = ib_umem_get(udata, start, len, acc, 0);
 if (IS_ERR(mr->umem)) {
  status = -EFAULT;
  goto umem_err;
 }
 num_pbes = ib_umem_page_count(mr->umem);
 status = ocrdma_get_pbl_info(dev, mr, num_pbes);
 if (status)
  goto umem_err;

 mr->hwmr.pbe_size = PAGE_SIZE;
 mr->hwmr.fbo = ib_umem_offset(mr->umem);
 mr->hwmr.va = usr_addr;
 mr->hwmr.len = len;
 mr->hwmr.remote_wr = (acc & IB_ACCESS_REMOTE_WRITE) ? 1 : 0;
 mr->hwmr.remote_rd = (acc & IB_ACCESS_REMOTE_READ) ? 1 : 0;
 mr->hwmr.local_wr = (acc & IB_ACCESS_LOCAL_WRITE) ? 1 : 0;
 mr->hwmr.local_rd = 1;
 mr->hwmr.remote_atomic = (acc & IB_ACCESS_REMOTE_ATOMIC) ? 1 : 0;
 status = ocrdma_build_pbl_tbl(dev, &mr->hwmr);
 if (status)
  goto umem_err;
 build_user_pbes(dev, mr, num_pbes);
 status = ocrdma_reg_mr(dev, &mr->hwmr, pd->id, acc);
 if (status)
  goto mbx_err;
 mr->ibmr.lkey = mr->hwmr.lkey;
 if (mr->hwmr.remote_wr || mr->hwmr.remote_rd)
  mr->ibmr.rkey = mr->hwmr.lkey;

 return &mr->ibmr;

mbx_err:
 ocrdma_free_mr_pbl_tbl(dev, &mr->hwmr);
umem_err:
 kfree(mr);
 return ERR_PTR(status);
}

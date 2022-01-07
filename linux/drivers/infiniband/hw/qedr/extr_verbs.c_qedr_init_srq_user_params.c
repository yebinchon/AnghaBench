
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct scatterlist {int dummy; } ;
struct rdma_srq_producers {int dummy; } ;
struct TYPE_8__ {int phy_prod_pair_addr; } ;
struct TYPE_9__ {int umem; int pbl_tbl; int pbl_info; } ;
struct qedr_srq {TYPE_2__ hw_srq; TYPE_4__* prod_umem; int dev; TYPE_3__ usrq; } ;
struct qedr_create_srq_ureq {int prod_pair_addr; int srq_len; int srq_addr; } ;
struct ib_udata {int dummy; } ;
struct TYPE_7__ {struct scatterlist* sgl; } ;
struct TYPE_10__ {TYPE_1__ sg_head; } ;


 int DP_ERR (int ,char*,int) ;
 scalar_t__ IS_ERR (TYPE_4__*) ;
 int PTR_ERR (TYPE_4__*) ;
 TYPE_4__* ib_umem_get (struct ib_udata*,int ,int,int,int) ;
 int ib_umem_release (int ) ;
 int qedr_free_pbl (int ,int *,int ) ;
 int qedr_init_user_queue (struct ib_udata*,int ,TYPE_3__*,int ,int ,int,int,int) ;
 int sg_dma_address (struct scatterlist*) ;

__attribute__((used)) static int qedr_init_srq_user_params(struct ib_udata *udata,
         struct qedr_srq *srq,
         struct qedr_create_srq_ureq *ureq,
         int access, int dmasync)
{
 struct scatterlist *sg;
 int rc;

 rc = qedr_init_user_queue(udata, srq->dev, &srq->usrq, ureq->srq_addr,
      ureq->srq_len, access, dmasync, 1);
 if (rc)
  return rc;

 srq->prod_umem =
  ib_umem_get(udata, ureq->prod_pair_addr,
       sizeof(struct rdma_srq_producers), access, dmasync);
 if (IS_ERR(srq->prod_umem)) {
  qedr_free_pbl(srq->dev, &srq->usrq.pbl_info, srq->usrq.pbl_tbl);
  ib_umem_release(srq->usrq.umem);
  DP_ERR(srq->dev,
         "create srq: failed ib_umem_get for producer, got %ld\n",
         PTR_ERR(srq->prod_umem));
  return PTR_ERR(srq->prod_umem);
 }

 sg = srq->prod_umem->sg_head.sgl;
 srq->hw_srq.phy_prod_pair_addr = sg_dma_address(sg);

 return 0;
}

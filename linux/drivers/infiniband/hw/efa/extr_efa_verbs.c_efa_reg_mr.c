
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned int u64 ;
struct pbl_context {int dummy; } ;
struct ib_udata {scalar_t__ inlen; } ;
struct ib_pd {int device; } ;
struct ib_mr {int lkey; unsigned int length; int rkey; } ;
struct efa_mr {int umem; struct ib_mr ibmr; } ;
struct TYPE_8__ {int reg_mr_err; } ;
struct TYPE_9__ {TYPE_3__ sw_stats; } ;
struct TYPE_6__ {int page_size_cap; } ;
struct efa_dev {TYPE_4__ stats; int ibdev; int edev; TYPE_1__ dev_attr; } ;
struct efa_com_reg_mr_result {int l_key; int r_key; } ;
struct TYPE_7__ {int inline_pbl_array; } ;
struct efa_com_reg_mr_params {unsigned int iova; unsigned int mr_length_in_bytes; int permissions; int page_num; TYPE_2__ pbl; int page_shift; int pd; } ;
struct TYPE_10__ {int pdn; } ;


 int ARRAY_SIZE (int ) ;
 int DIV_ROUND_UP (unsigned int,unsigned int) ;
 int EFA_SUPPORTED_ACCESS_FLAGS ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int __ffs (unsigned int) ;
 int atomic64_inc (int *) ;
 int efa_com_register_mr (int *,struct efa_com_reg_mr_params*,struct efa_com_reg_mr_result*) ;
 int efa_create_inline_pbl (struct efa_dev*,struct efa_mr*,struct efa_com_reg_mr_params*) ;
 int efa_create_pbl (struct efa_dev*,struct pbl_context*,struct efa_mr*,struct efa_com_reg_mr_params*) ;
 int ib_is_udata_cleared (struct ib_udata*,int ,int) ;
 unsigned int ib_umem_find_best_pgsz (int ,int,unsigned int) ;
 int ib_umem_get (struct ib_udata*,unsigned int,unsigned int,int,int ) ;
 int ib_umem_release (int ) ;
 int ibdev_dbg (int *,char*,...) ;
 int kfree (struct efa_mr*) ;
 struct efa_mr* kzalloc (int,int ) ;
 int pbl_destroy (struct efa_dev*,struct pbl_context*) ;
 struct efa_dev* to_edev (int ) ;
 TYPE_5__* to_epd (struct ib_pd*) ;

struct ib_mr *efa_reg_mr(struct ib_pd *ibpd, u64 start, u64 length,
    u64 virt_addr, int access_flags,
    struct ib_udata *udata)
{
 struct efa_dev *dev = to_edev(ibpd->device);
 struct efa_com_reg_mr_params params = {};
 struct efa_com_reg_mr_result result = {};
 struct pbl_context pbl;
 unsigned int pg_sz;
 struct efa_mr *mr;
 int inline_size;
 int err;

 if (udata->inlen &&
     !ib_is_udata_cleared(udata, 0, sizeof(udata->inlen))) {
  ibdev_dbg(&dev->ibdev,
     "Incompatible ABI params, udata not cleared\n");
  err = -EINVAL;
  goto err_out;
 }

 if (access_flags & ~EFA_SUPPORTED_ACCESS_FLAGS) {
  ibdev_dbg(&dev->ibdev,
     "Unsupported access flags[%#x], supported[%#x]\n",
     access_flags, EFA_SUPPORTED_ACCESS_FLAGS);
  err = -EOPNOTSUPP;
  goto err_out;
 }

 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr) {
  err = -ENOMEM;
  goto err_out;
 }

 mr->umem = ib_umem_get(udata, start, length, access_flags, 0);
 if (IS_ERR(mr->umem)) {
  err = PTR_ERR(mr->umem);
  ibdev_dbg(&dev->ibdev,
     "Failed to pin and map user space memory[%d]\n", err);
  goto err_free;
 }

 params.pd = to_epd(ibpd)->pdn;
 params.iova = virt_addr;
 params.mr_length_in_bytes = length;
 params.permissions = access_flags & 0x1;

 pg_sz = ib_umem_find_best_pgsz(mr->umem,
           dev->dev_attr.page_size_cap,
           virt_addr);
 if (!pg_sz) {
  err = -EOPNOTSUPP;
  ibdev_dbg(&dev->ibdev, "Failed to find a suitable page size in page_size_cap %#llx\n",
     dev->dev_attr.page_size_cap);
  goto err_unmap;
 }

 params.page_shift = __ffs(pg_sz);
 params.page_num = DIV_ROUND_UP(length + (start & (pg_sz - 1)),
           pg_sz);

 ibdev_dbg(&dev->ibdev,
    "start %#llx length %#llx params.page_shift %u params.page_num %u\n",
    start, length, params.page_shift, params.page_num);

 inline_size = ARRAY_SIZE(params.pbl.inline_pbl_array);
 if (params.page_num <= inline_size) {
  err = efa_create_inline_pbl(dev, mr, &params);
  if (err)
   goto err_unmap;

  err = efa_com_register_mr(&dev->edev, &params, &result);
  if (err)
   goto err_unmap;
 } else {
  err = efa_create_pbl(dev, &pbl, mr, &params);
  if (err)
   goto err_unmap;

  err = efa_com_register_mr(&dev->edev, &params, &result);
  pbl_destroy(dev, &pbl);

  if (err)
   goto err_unmap;
 }

 mr->ibmr.lkey = result.l_key;
 mr->ibmr.rkey = result.r_key;
 mr->ibmr.length = length;
 ibdev_dbg(&dev->ibdev, "Registered mr[%d]\n", mr->ibmr.lkey);

 return &mr->ibmr;

err_unmap:
 ib_umem_release(mr->umem);
err_free:
 kfree(mr);
err_out:
 atomic64_inc(&dev->stats.sw_stats.reg_mr_err);
 return ERR_PTR(err);
}

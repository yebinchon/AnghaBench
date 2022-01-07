
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uresp ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {struct ib_device* device; } ;
struct ib_device {int dummy; } ;
struct i40iw_ucontext {int abi_ver; int qp_reg_mem_list_lock; int qp_reg_mem_list; int cq_reg_mem_list_lock; int cq_reg_mem_list; struct i40iw_device* iwdev; } ;
struct i40iw_device {int max_qp_wr; int max_pd; int max_qp; } ;
struct i40iw_alloc_ucontext_resp {int wq_size; int kernel_ver; int max_pds; int max_qps; } ;
struct i40iw_alloc_ucontext_req {int userspace_ver; } ;
typedef int req ;


 int EFAULT ;
 int EINVAL ;
 int I40IW_ABI_VER ;
 int INIT_LIST_HEAD (int *) ;
 int i40iw_pr_err (char*,int) ;
 scalar_t__ ib_copy_from_udata (struct i40iw_alloc_ucontext_req*,struct ib_udata*,int) ;
 scalar_t__ ib_copy_to_udata (struct ib_udata*,struct i40iw_alloc_ucontext_resp*,int) ;
 int spin_lock_init (int *) ;
 struct i40iw_device* to_iwdev (struct ib_device*) ;
 struct i40iw_ucontext* to_ucontext (struct ib_ucontext*) ;

__attribute__((used)) static int i40iw_alloc_ucontext(struct ib_ucontext *uctx,
    struct ib_udata *udata)
{
 struct ib_device *ibdev = uctx->device;
 struct i40iw_device *iwdev = to_iwdev(ibdev);
 struct i40iw_alloc_ucontext_req req;
 struct i40iw_alloc_ucontext_resp uresp = {};
 struct i40iw_ucontext *ucontext = to_ucontext(uctx);

 if (ib_copy_from_udata(&req, udata, sizeof(req)))
  return -EINVAL;

 if (req.userspace_ver < 4 || req.userspace_ver > I40IW_ABI_VER) {
  i40iw_pr_err("Unsupported provider library version %u.\n", req.userspace_ver);
  return -EINVAL;
 }

 uresp.max_qps = iwdev->max_qp;
 uresp.max_pds = iwdev->max_pd;
 uresp.wq_size = iwdev->max_qp_wr * 2;
 uresp.kernel_ver = req.userspace_ver;

 ucontext->iwdev = iwdev;
 ucontext->abi_ver = req.userspace_ver;

 if (ib_copy_to_udata(udata, &uresp, sizeof(uresp)))
  return -EFAULT;

 INIT_LIST_HEAD(&ucontext->cq_reg_mem_list);
 spin_lock_init(&ucontext->cq_reg_mem_list_lock);
 INIT_LIST_HEAD(&ucontext->qp_reg_mem_list);
 spin_lock_init(&ucontext->qp_reg_mem_list_lock);

 return 0;
}

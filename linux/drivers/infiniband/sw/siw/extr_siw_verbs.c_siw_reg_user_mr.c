
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uresp ;
typedef int ureq ;
typedef int u64 ;
struct siw_uresp_reg_mr {int stag; } ;
struct siw_ureq_reg_mr {int stag_key; } ;
struct siw_umem {int dummy; } ;
struct ib_mr {int rkey; int lkey; } ;
struct siw_mr {struct siw_mem* mem; struct ib_mr base_mr; } ;
struct siw_mem {int stag_valid; int stag; } ;
struct siw_device {int num_mr; } ;
struct ib_udata {int inlen; int outlen; } ;
struct ib_pd {int device; } ;
struct TYPE_4__ {TYPE_1__* mm; } ;
struct TYPE_3__ {unsigned long locked_vm; } ;


 int EINVAL ;
 int ENOMEM ;
 struct ib_mr* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct siw_umem*) ;
 unsigned long PAGE_ALIGN (int ) ;
 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 int PTR_ERR (struct siw_umem*) ;
 int RLIMIT_MEMLOCK ;
 unsigned long RLIM_INFINITY ;
 scalar_t__ SIW_MAX_MR ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_inc_return (int *) ;
 TYPE_2__* current ;
 int ib_access_writable (int) ;
 int ib_copy_from_udata (struct siw_ureq_reg_mr*,struct ib_udata*,int) ;
 int ib_copy_to_udata (struct ib_udata*,struct siw_uresp_reg_mr*,int) ;
 int kfree_rcu (struct siw_mr*,int ) ;
 struct siw_mr* kzalloc (int,int ) ;
 int rcu ;
 unsigned long rlimit (int ) ;
 int siw_dbg_pd (struct ib_pd*,char*,...) ;
 int siw_mr_add_mem (struct siw_mr*,struct ib_pd*,struct siw_umem*,int,int,int) ;
 int siw_mr_drop_mem (struct siw_mr*) ;
 struct siw_umem* siw_umem_get (int,int,int ) ;
 int siw_umem_release (struct siw_umem*,int) ;
 struct siw_device* to_siw_dev (int ) ;

struct ib_mr *siw_reg_user_mr(struct ib_pd *pd, u64 start, u64 len,
         u64 rnic_va, int rights, struct ib_udata *udata)
{
 struct siw_mr *mr = ((void*)0);
 struct siw_umem *umem = ((void*)0);
 struct siw_ureq_reg_mr ureq;
 struct siw_device *sdev = to_siw_dev(pd->device);

 unsigned long mem_limit = rlimit(RLIMIT_MEMLOCK);
 int rv;

 siw_dbg_pd(pd, "start: 0x%pK, va: 0x%pK, len: %llu\n",
     (void *)(uintptr_t)start, (void *)(uintptr_t)rnic_va,
     (unsigned long long)len);

 if (atomic_inc_return(&sdev->num_mr) > SIW_MAX_MR) {
  siw_dbg_pd(pd, "too many mr's\n");
  rv = -ENOMEM;
  goto err_out;
 }
 if (!len) {
  rv = -EINVAL;
  goto err_out;
 }
 if (mem_limit != RLIM_INFINITY) {
  unsigned long num_pages =
   (PAGE_ALIGN(len + (start & ~PAGE_MASK))) >> PAGE_SHIFT;
  mem_limit >>= PAGE_SHIFT;

  if (num_pages > mem_limit - current->mm->locked_vm) {
   siw_dbg_pd(pd, "pages req %lu, max %lu, lock %lu\n",
       num_pages, mem_limit,
       current->mm->locked_vm);
   rv = -ENOMEM;
   goto err_out;
  }
 }
 umem = siw_umem_get(start, len, ib_access_writable(rights));
 if (IS_ERR(umem)) {
  rv = PTR_ERR(umem);
  siw_dbg_pd(pd, "getting user memory failed: %d\n", rv);
  umem = ((void*)0);
  goto err_out;
 }
 mr = kzalloc(sizeof(*mr), GFP_KERNEL);
 if (!mr) {
  rv = -ENOMEM;
  goto err_out;
 }
 rv = siw_mr_add_mem(mr, pd, umem, start, len, rights);
 if (rv)
  goto err_out;

 if (udata) {
  struct siw_uresp_reg_mr uresp = {};
  struct siw_mem *mem = mr->mem;

  if (udata->inlen < sizeof(ureq)) {
   rv = -EINVAL;
   goto err_out;
  }
  rv = ib_copy_from_udata(&ureq, udata, sizeof(ureq));
  if (rv)
   goto err_out;

  mr->base_mr.lkey |= ureq.stag_key;
  mr->base_mr.rkey |= ureq.stag_key;
  mem->stag |= ureq.stag_key;
  uresp.stag = mem->stag;

  if (udata->outlen < sizeof(uresp)) {
   rv = -EINVAL;
   goto err_out;
  }
  rv = ib_copy_to_udata(udata, &uresp, sizeof(uresp));
  if (rv)
   goto err_out;
 }
 mr->mem->stag_valid = 1;

 return &mr->base_mr;

err_out:
 atomic_dec(&sdev->num_mr);
 if (mr) {
  if (mr->mem)
   siw_mr_drop_mem(mr);
  kfree_rcu(mr, rcu);
 } else {
  if (umem)
   siw_umem_release(umem, 0);
 }
 return ERR_PTR(rv);
}

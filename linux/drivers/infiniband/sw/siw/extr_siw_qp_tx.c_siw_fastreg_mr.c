
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siw_sqe {int rkey; int access; scalar_t__ base_mr; } ;
struct siw_mem {int stag_valid; int stag; int va; int perms; struct ib_pd* pd; } ;
struct siw_device {int dummy; } ;
struct ib_pd {int device; } ;
struct ib_mr {int rkey; int iova; } ;


 int EINVAL ;
 int pr_warn (char*,...) ;
 int siw_dbg_mem (struct siw_mem*,char*,int) ;
 int siw_dbg_pd (struct ib_pd*,char*,int) ;
 struct siw_mem* siw_mem_id2obj (struct siw_device*,int) ;
 int siw_mem_put (struct siw_mem*) ;
 struct siw_device* to_siw_dev (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int siw_fastreg_mr(struct ib_pd *pd, struct siw_sqe *sqe)
{
 struct ib_mr *base_mr = (struct ib_mr *)(uintptr_t)sqe->base_mr;
 struct siw_device *sdev = to_siw_dev(pd->device);
 struct siw_mem *mem = siw_mem_id2obj(sdev, sqe->rkey >> 8);
 int rv = 0;

 siw_dbg_pd(pd, "STag 0x%08x\n", sqe->rkey);

 if (unlikely(!mem || !base_mr)) {
  pr_warn("siw: fastreg: STag 0x%08x unknown\n", sqe->rkey);
  return -EINVAL;
 }
 if (unlikely(base_mr->rkey >> 8 != sqe->rkey >> 8)) {
  pr_warn("siw: fastreg: STag 0x%08x: bad MR\n", sqe->rkey);
  rv = -EINVAL;
  goto out;
 }
 if (unlikely(mem->pd != pd)) {
  pr_warn("siw: fastreg: PD mismatch\n");
  rv = -EINVAL;
  goto out;
 }
 if (unlikely(mem->stag_valid)) {
  pr_warn("siw: fastreg: STag 0x%08x already valid\n", sqe->rkey);
  rv = -EINVAL;
  goto out;
 }

 mem->stag = sqe->rkey;
 mem->perms = sqe->access;

 siw_dbg_mem(mem, "STag 0x%08x now valid\n", sqe->rkey);
 mem->va = base_mr->iova;
 mem->stag_valid = 1;
out:
 siw_mem_put(mem);
 return rv;
}

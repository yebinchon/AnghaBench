
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct siw_sge {scalar_t__ length; int lkey; scalar_t__ laddr; } ;
struct siw_mem {int stag; } ;
struct siw_device {int dummy; } ;
struct ib_pd {int device; } ;
typedef enum ib_access_flags { ____Placeholder_ib_access_flags } ib_access_flags ;


 int E_ACCESS_OK ;
 int E_BASE_BOUNDS ;
 int E_STAG_INVALID ;
 int siw_check_mem (struct ib_pd*,struct siw_mem*,scalar_t__,int,int) ;
 int siw_dbg_mem (struct siw_mem*,char*,int) ;
 int siw_dbg_pd (struct ib_pd*,char*,int) ;
 struct siw_mem* siw_mem_id2obj (struct siw_device*,int) ;
 int siw_mem_put (struct siw_mem*) ;
 struct siw_device* to_siw_dev (int ) ;
 scalar_t__ unlikely (int) ;

int siw_check_sge(struct ib_pd *pd, struct siw_sge *sge, struct siw_mem *mem[],
    enum ib_access_flags perms, u32 off, int len)
{
 struct siw_device *sdev = to_siw_dev(pd->device);
 struct siw_mem *new = ((void*)0);
 int rv = E_ACCESS_OK;

 if (len + off > sge->length) {
  rv = -E_BASE_BOUNDS;
  goto fail;
 }
 if (*mem == ((void*)0)) {
  new = siw_mem_id2obj(sdev, sge->lkey >> 8);
  if (unlikely(!new)) {
   siw_dbg_pd(pd, "STag unknown: 0x%08x\n", sge->lkey);
   rv = -E_STAG_INVALID;
   goto fail;
  }
  *mem = new;
 }

 if (unlikely((*mem)->stag != sge->lkey)) {
  siw_dbg_mem((*mem), "STag mismatch: 0x%08x\n", sge->lkey);
  rv = -E_STAG_INVALID;
  goto fail;
 }
 rv = siw_check_mem(pd, *mem, sge->laddr + off, perms, len);
 if (unlikely(rv))
  goto fail;

 return 0;

fail:
 if (new) {
  *mem = ((void*)0);
  siw_mem_put(new);
 }
 return rv;
}

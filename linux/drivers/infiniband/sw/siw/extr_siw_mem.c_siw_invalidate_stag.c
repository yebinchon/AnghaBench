
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct siw_mem {scalar_t__ stag_valid; struct ib_pd* pd; } ;
struct siw_device {int dummy; } ;
struct ib_pd {int device; } ;


 int EACCES ;
 int EINVAL ;
 int siw_dbg_pd (struct ib_pd*,char*,int) ;
 struct siw_mem* siw_mem_id2obj (struct siw_device*,int) ;
 int siw_mem_put (struct siw_mem*) ;
 struct siw_device* to_siw_dev (int ) ;
 scalar_t__ unlikely (int) ;

int siw_invalidate_stag(struct ib_pd *pd, u32 stag)
{
 struct siw_device *sdev = to_siw_dev(pd->device);
 struct siw_mem *mem = siw_mem_id2obj(sdev, stag >> 8);
 int rv = 0;

 if (unlikely(!mem)) {
  siw_dbg_pd(pd, "STag 0x%08x unknown\n", stag);
  return -EINVAL;
 }
 if (unlikely(mem->pd != pd)) {
  siw_dbg_pd(pd, "PD mismatch for STag 0x%08x\n", stag);
  rv = -EACCES;
  goto out;
 }




 mem->stag_valid = 0;

 siw_dbg_pd(pd, "STag 0x%08x now invalid\n", stag);
out:
 siw_mem_put(mem);
 return rv;
}

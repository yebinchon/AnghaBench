
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_sa_manager {int * flist; } ;


 int AMDGPU_SA_NUM_FENCE_LISTS ;
 unsigned int amdgpu_sa_bo_hole_eoffset (struct amdgpu_sa_manager*) ;
 unsigned int amdgpu_sa_bo_hole_soffset (struct amdgpu_sa_manager*) ;
 int list_empty (int *) ;

__attribute__((used)) static bool amdgpu_sa_event(struct amdgpu_sa_manager *sa_manager,
       unsigned size, unsigned align)
{
 unsigned soffset, eoffset, wasted;
 int i;

 for (i = 0; i < AMDGPU_SA_NUM_FENCE_LISTS; ++i)
  if (!list_empty(&sa_manager->flist[i]))
   return 1;

 soffset = amdgpu_sa_bo_hole_soffset(sa_manager);
 eoffset = amdgpu_sa_bo_hole_eoffset(sa_manager);
 wasted = (align - (soffset % align)) % align;

 if ((eoffset - soffset) >= (size + wasted)) {
  return 1;
 }

 return 0;
}

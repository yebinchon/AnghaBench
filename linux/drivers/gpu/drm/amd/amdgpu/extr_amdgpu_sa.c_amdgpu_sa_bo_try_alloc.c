
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_sa_manager {int * hole; } ;
struct amdgpu_sa_bo {unsigned int soffset; unsigned int eoffset; int olist; int flist; struct amdgpu_sa_manager* manager; } ;


 int INIT_LIST_HEAD (int *) ;
 unsigned int amdgpu_sa_bo_hole_eoffset (struct amdgpu_sa_manager*) ;
 unsigned int amdgpu_sa_bo_hole_soffset (struct amdgpu_sa_manager*) ;
 int list_add (int *,int *) ;

__attribute__((used)) static bool amdgpu_sa_bo_try_alloc(struct amdgpu_sa_manager *sa_manager,
       struct amdgpu_sa_bo *sa_bo,
       unsigned size, unsigned align)
{
 unsigned soffset, eoffset, wasted;

 soffset = amdgpu_sa_bo_hole_soffset(sa_manager);
 eoffset = amdgpu_sa_bo_hole_eoffset(sa_manager);
 wasted = (align - (soffset % align)) % align;

 if ((eoffset - soffset) >= (size + wasted)) {
  soffset += wasted;

  sa_bo->manager = sa_manager;
  sa_bo->soffset = soffset;
  sa_bo->eoffset = soffset + size;
  list_add(&sa_bo->olist, sa_manager->hole);
  INIT_LIST_HEAD(&sa_bo->flist);
  sa_manager->hole = &sa_bo->olist;
  return 1;
 }
 return 0;
}

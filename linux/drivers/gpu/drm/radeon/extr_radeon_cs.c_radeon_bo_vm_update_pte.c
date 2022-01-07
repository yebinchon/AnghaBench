
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct radeon_vm {struct radeon_bo_va* ib_bo_va; } ;
struct TYPE_9__ {TYPE_2__* bo; } ;
struct radeon_device {int dev; TYPE_3__ ring_tmp_bo; } ;
struct TYPE_12__ {int sync; } ;
struct radeon_cs_parser {int nrelocs; TYPE_6__ ib; TYPE_4__* relocs; struct radeon_device* rdev; } ;
struct radeon_bo_va {int last_pt_update; } ;
struct TYPE_11__ {int mem; } ;
struct radeon_bo {TYPE_5__ tbo; } ;
struct TYPE_10__ {struct radeon_bo* robj; } ;
struct TYPE_7__ {int mem; } ;
struct TYPE_8__ {TYPE_1__ tbo; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int dev_err (int ,char*,struct radeon_bo*,struct radeon_vm*) ;
 int radeon_sync_fence (int *,int ) ;
 struct radeon_bo_va* radeon_vm_bo_find (struct radeon_vm*,struct radeon_bo*) ;
 int radeon_vm_bo_update (struct radeon_device*,struct radeon_bo_va*,int *) ;
 int radeon_vm_clear_freed (struct radeon_device*,struct radeon_vm*) ;
 int radeon_vm_clear_invalids (struct radeon_device*,struct radeon_vm*) ;
 int radeon_vm_update_page_directory (struct radeon_device*,struct radeon_vm*) ;

__attribute__((used)) static int radeon_bo_vm_update_pte(struct radeon_cs_parser *p,
       struct radeon_vm *vm)
{
 struct radeon_device *rdev = p->rdev;
 struct radeon_bo_va *bo_va;
 int i, r;

 r = radeon_vm_update_page_directory(rdev, vm);
 if (r)
  return r;

 r = radeon_vm_clear_freed(rdev, vm);
 if (r)
  return r;

 if (vm->ib_bo_va == ((void*)0)) {
  DRM_ERROR("Tmp BO not in VM!\n");
  return -EINVAL;
 }

 r = radeon_vm_bo_update(rdev, vm->ib_bo_va,
    &rdev->ring_tmp_bo.bo->tbo.mem);
 if (r)
  return r;

 for (i = 0; i < p->nrelocs; i++) {
  struct radeon_bo *bo;

  bo = p->relocs[i].robj;
  bo_va = radeon_vm_bo_find(vm, bo);
  if (bo_va == ((void*)0)) {
   dev_err(rdev->dev, "bo %p not in vm %p\n", bo, vm);
   return -EINVAL;
  }

  r = radeon_vm_bo_update(rdev, bo_va, &bo->tbo.mem);
  if (r)
   return r;

  radeon_sync_fence(&p->ib.sync, bo_va->last_pt_update);
 }

 return radeon_vm_clear_invalids(rdev, vm);
}

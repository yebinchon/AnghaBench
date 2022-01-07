
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct ww_acquire_ctx {int dummy; } ;
struct ttm_validate_buffer {int num_shared; int head; int * bo; } ;
struct list_head {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_file {struct amdgpu_fpriv* driver_priv; } ;
struct drm_device {TYPE_1__* pdev; struct amdgpu_device* dev_private; } ;
struct drm_amdgpu_gem_va {int const flags; int operation; int map_size; int offset_in_bo; int va_address; int handle; } ;
struct amdgpu_fpriv {int vm; struct amdgpu_bo_va* prt_va; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_bo_va {int dummy; } ;
struct amdgpu_bo_list_entry {int dummy; } ;
struct amdgpu_bo {int flags; int tbo; } ;
struct TYPE_2__ {int dev; } ;


 int AMDGPU_GEM_CREATE_VM_ALWAYS_VALID ;
 int AMDGPU_GMC_HOLE_END ;
 int AMDGPU_GMC_HOLE_MASK ;
 int AMDGPU_GMC_HOLE_START ;




 int AMDGPU_VA_RESERVED_SIZE ;
 int AMDGPU_VM_DELAY_UPDATE ;
 int AMDGPU_VM_MTYPE_MASK ;
 int AMDGPU_VM_PAGE_EXECUTABLE ;
 int AMDGPU_VM_PAGE_PRT ;
 int AMDGPU_VM_PAGE_READABLE ;
 int AMDGPU_VM_PAGE_WRITEABLE ;
 int EINVAL ;
 int ENOENT ;
 int INIT_LIST_HEAD (struct list_head*) ;
 int amdgpu_gem_va_update_vm (struct amdgpu_device*,int *,struct amdgpu_bo_va*,int) ;
 int amdgpu_gmc_get_pte_flags (struct amdgpu_device*,int) ;
 int amdgpu_vm_bo_clear_mappings (struct amdgpu_device*,int *,int ,int ) ;
 struct amdgpu_bo_va* amdgpu_vm_bo_find (int *,struct amdgpu_bo*) ;
 int amdgpu_vm_bo_map (struct amdgpu_device*,struct amdgpu_bo_va*,int ,int ,int ,int ) ;
 int amdgpu_vm_bo_replace_map (struct amdgpu_device*,struct amdgpu_bo_va*,int ,int ,int ,int ) ;
 int amdgpu_vm_bo_unmap (struct amdgpu_device*,struct amdgpu_bo_va*,int ) ;
 int amdgpu_vm_debug ;
 int amdgpu_vm_get_pd_bo (int *,struct list_head*,struct amdgpu_bo_list_entry*) ;
 int dev_dbg (int *,char*,int const,...) ;
 struct drm_gem_object* drm_gem_object_lookup (struct drm_file*,int ) ;
 int drm_gem_object_put_unlocked (struct drm_gem_object*) ;
 struct amdgpu_bo* gem_to_amdgpu_bo (struct drm_gem_object*) ;
 int list_add (int *,struct list_head*) ;
 int ttm_eu_backoff_reservation (struct ww_acquire_ctx*,struct list_head*) ;
 int ttm_eu_reserve_buffers (struct ww_acquire_ctx*,struct list_head*,int,struct list_head*,int) ;

int amdgpu_gem_va_ioctl(struct drm_device *dev, void *data,
     struct drm_file *filp)
{
 const uint32_t valid_flags = AMDGPU_VM_DELAY_UPDATE |
  AMDGPU_VM_PAGE_READABLE | AMDGPU_VM_PAGE_WRITEABLE |
  AMDGPU_VM_PAGE_EXECUTABLE | AMDGPU_VM_MTYPE_MASK;
 const uint32_t prt_flags = AMDGPU_VM_DELAY_UPDATE |
  AMDGPU_VM_PAGE_PRT;

 struct drm_amdgpu_gem_va *args = data;
 struct drm_gem_object *gobj;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_fpriv *fpriv = filp->driver_priv;
 struct amdgpu_bo *abo;
 struct amdgpu_bo_va *bo_va;
 struct amdgpu_bo_list_entry vm_pd;
 struct ttm_validate_buffer tv;
 struct ww_acquire_ctx ticket;
 struct list_head list, duplicates;
 uint64_t va_flags;
 int r = 0;

 if (args->va_address < AMDGPU_VA_RESERVED_SIZE) {
  dev_dbg(&dev->pdev->dev,
   "va_address 0x%LX is in reserved area 0x%LX\n",
   args->va_address, AMDGPU_VA_RESERVED_SIZE);
  return -EINVAL;
 }

 if (args->va_address >= AMDGPU_GMC_HOLE_START &&
     args->va_address < AMDGPU_GMC_HOLE_END) {
  dev_dbg(&dev->pdev->dev,
   "va_address 0x%LX is in VA hole 0x%LX-0x%LX\n",
   args->va_address, AMDGPU_GMC_HOLE_START,
   AMDGPU_GMC_HOLE_END);
  return -EINVAL;
 }

 args->va_address &= AMDGPU_GMC_HOLE_MASK;

 if ((args->flags & ~valid_flags) && (args->flags & ~prt_flags)) {
  dev_dbg(&dev->pdev->dev, "invalid flags combination 0x%08X\n",
   args->flags);
  return -EINVAL;
 }

 switch (args->operation) {
 case 130:
 case 128:
 case 131:
 case 129:
  break;
 default:
  dev_dbg(&dev->pdev->dev, "unsupported operation %d\n",
   args->operation);
  return -EINVAL;
 }

 INIT_LIST_HEAD(&list);
 INIT_LIST_HEAD(&duplicates);
 if ((args->operation != 131) &&
     !(args->flags & AMDGPU_VM_PAGE_PRT)) {
  gobj = drm_gem_object_lookup(filp, args->handle);
  if (gobj == ((void*)0))
   return -ENOENT;
  abo = gem_to_amdgpu_bo(gobj);
  tv.bo = &abo->tbo;
  if (abo->flags & AMDGPU_GEM_CREATE_VM_ALWAYS_VALID)
   tv.num_shared = 1;
  else
   tv.num_shared = 0;
  list_add(&tv.head, &list);
 } else {
  gobj = ((void*)0);
  abo = ((void*)0);
 }

 amdgpu_vm_get_pd_bo(&fpriv->vm, &list, &vm_pd);

 r = ttm_eu_reserve_buffers(&ticket, &list, 1, &duplicates, 0);
 if (r)
  goto error_unref;

 if (abo) {
  bo_va = amdgpu_vm_bo_find(&fpriv->vm, abo);
  if (!bo_va) {
   r = -ENOENT;
   goto error_backoff;
  }
 } else if (args->operation != 131) {
  bo_va = fpriv->prt_va;
 } else {
  bo_va = ((void*)0);
 }

 switch (args->operation) {
 case 130:
  va_flags = amdgpu_gmc_get_pte_flags(adev, args->flags);
  r = amdgpu_vm_bo_map(adev, bo_va, args->va_address,
         args->offset_in_bo, args->map_size,
         va_flags);
  break;
 case 128:
  r = amdgpu_vm_bo_unmap(adev, bo_va, args->va_address);
  break;

 case 131:
  r = amdgpu_vm_bo_clear_mappings(adev, &fpriv->vm,
      args->va_address,
      args->map_size);
  break;
 case 129:
  va_flags = amdgpu_gmc_get_pte_flags(adev, args->flags);
  r = amdgpu_vm_bo_replace_map(adev, bo_va, args->va_address,
          args->offset_in_bo, args->map_size,
          va_flags);
  break;
 default:
  break;
 }
 if (!r && !(args->flags & AMDGPU_VM_DELAY_UPDATE) && !amdgpu_vm_debug)
  amdgpu_gem_va_update_vm(adev, &fpriv->vm, bo_va,
     args->operation);

error_backoff:
 ttm_eu_backoff_reservation(&ticket, &list);

error_unref:
 drm_gem_object_put_unlocked(gobj);
 return r;
}

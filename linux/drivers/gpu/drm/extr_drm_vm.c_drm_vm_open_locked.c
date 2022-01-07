
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {scalar_t__ vm_start; scalar_t__ vm_end; } ;
struct drm_vma_entry {int head; int pid; struct vm_area_struct* vma; } ;
struct drm_device {int vmalist; } ;
struct TYPE_2__ {int pid; } ;


 int DRM_DEBUG (char*,scalar_t__,scalar_t__) ;
 int GFP_KERNEL ;
 TYPE_1__* current ;
 struct drm_vma_entry* kmalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static void drm_vm_open_locked(struct drm_device *dev,
          struct vm_area_struct *vma)
{
 struct drm_vma_entry *vma_entry;

 DRM_DEBUG("0x%08lx,0x%08lx\n",
    vma->vm_start, vma->vm_end - vma->vm_start);

 vma_entry = kmalloc(sizeof(*vma_entry), GFP_KERNEL);
 if (vma_entry) {
  vma_entry->vma = vma;
  vma_entry->pid = current->pid;
  list_add(&vma_entry->head, &dev->vmalist);
 }
}

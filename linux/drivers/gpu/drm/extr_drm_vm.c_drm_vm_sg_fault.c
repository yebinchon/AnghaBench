
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_fault_t ;
struct vm_fault {unsigned long address; struct page* page; struct vm_area_struct* vma; } ;
struct vm_area_struct {unsigned long vm_start; TYPE_1__* vm_file; struct drm_local_map* vm_private_data; } ;
struct page {int dummy; } ;
struct drm_sg_mem {struct page** pagelist; scalar_t__ virtual; } ;
struct drm_local_map {unsigned long offset; } ;
struct drm_file {TYPE_2__* minor; } ;
struct drm_device {struct drm_sg_mem* sg; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_3__ {struct drm_file* private_data; } ;


 unsigned long PAGE_SHIFT ;
 int VM_FAULT_SIGBUS ;
 int get_page (struct page*) ;

__attribute__((used)) static vm_fault_t drm_vm_sg_fault(struct vm_fault *vmf)
{
 struct vm_area_struct *vma = vmf->vma;
 struct drm_local_map *map = vma->vm_private_data;
 struct drm_file *priv = vma->vm_file->private_data;
 struct drm_device *dev = priv->minor->dev;
 struct drm_sg_mem *entry = dev->sg;
 unsigned long offset;
 unsigned long map_offset;
 unsigned long page_offset;
 struct page *page;

 if (!entry)
  return VM_FAULT_SIGBUS;
 if (!entry->pagelist)
  return VM_FAULT_SIGBUS;

 offset = vmf->address - vma->vm_start;
 map_offset = map->offset - (unsigned long)dev->sg->virtual;
 page_offset = (offset >> PAGE_SHIFT) + (map_offset >> PAGE_SHIFT);
 page = entry->pagelist[page_offset];
 get_page(page);
 vmf->page = page;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
struct file {int dummy; } ;
struct drm_vram_mm {int bdev; } ;


 int ttm_bo_mmap (struct file*,struct vm_area_struct*,int *) ;

int drm_vram_mm_mmap(struct file *filp, struct vm_area_struct *vma,
       struct drm_vram_mm *vmm)
{
 return ttm_bo_mmap(filp, vma, &vmm->bdev);
}

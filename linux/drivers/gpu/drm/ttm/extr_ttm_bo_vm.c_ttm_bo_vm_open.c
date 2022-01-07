
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vm_area_struct {TYPE_2__* vm_file; scalar_t__ vm_private_data; } ;
struct ttm_buffer_object {TYPE_1__* bdev; } ;
struct TYPE_4__ {scalar_t__ f_mapping; } ;
struct TYPE_3__ {scalar_t__ dev_mapping; } ;


 int WARN_ON (int) ;
 int ttm_bo_get (struct ttm_buffer_object*) ;

__attribute__((used)) static void ttm_bo_vm_open(struct vm_area_struct *vma)
{
 struct ttm_buffer_object *bo =
     (struct ttm_buffer_object *)vma->vm_private_data;

 WARN_ON(bo->bdev->dev_mapping != vma->vm_file->f_mapping);

 ttm_bo_get(bo);
}

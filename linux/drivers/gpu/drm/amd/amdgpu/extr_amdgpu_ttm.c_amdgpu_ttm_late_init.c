
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int stolen_vga_memory; } ;


 int amdgpu_bo_free_kernel (int *,int *,void**) ;

void amdgpu_ttm_late_init(struct amdgpu_device *adev)
{
 void *stolen_vga_buf;

 amdgpu_bo_free_kernel(&adev->stolen_vga_memory, ((void*)0), &stolen_vga_buf);
}

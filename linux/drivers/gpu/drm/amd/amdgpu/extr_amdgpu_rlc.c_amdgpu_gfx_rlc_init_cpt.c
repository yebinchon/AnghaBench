
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cp_table_obj; int cp_table_ptr; int cp_table_gpu_addr; int cp_table_size; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; int dev; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_reserved (struct amdgpu_device*,int ,int ,int ,int *,int *,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_unreserve (int ) ;
 int amdgpu_gfx_rlc_fini (struct amdgpu_device*) ;
 int amdgpu_gfx_rlc_setup_cp_table (struct amdgpu_device*) ;
 int dev_err (int ,char*,int) ;

int amdgpu_gfx_rlc_init_cpt(struct amdgpu_device *adev)
{
 int r;

 r = amdgpu_bo_create_reserved(adev, adev->gfx.rlc.cp_table_size,
          PAGE_SIZE, AMDGPU_GEM_DOMAIN_VRAM,
          &adev->gfx.rlc.cp_table_obj,
          &adev->gfx.rlc.cp_table_gpu_addr,
          (void **)&adev->gfx.rlc.cp_table_ptr);
 if (r) {
  dev_err(adev->dev, "(%d) failed to create cp table bo\n", r);
  amdgpu_gfx_rlc_fini(adev);
  return r;
 }


 amdgpu_gfx_rlc_setup_cp_table(adev);
 amdgpu_bo_kunmap(adev->gfx.rlc.cp_table_obj);
 amdgpu_bo_unreserve(adev->gfx.rlc.cp_table_obj);

 return 0;
}

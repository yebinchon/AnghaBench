
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int* sr_ptr; int* reg_list; int reg_list_size; int save_restore_obj; int save_restore_gpu_addr; } ;
struct TYPE_4__ {TYPE_1__ rlc; } ;
struct amdgpu_device {TYPE_2__ gfx; int dev; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_reserved (struct amdgpu_device*,int,int ,int ,int *,int *,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_unreserve (int ) ;
 int amdgpu_gfx_rlc_fini (struct amdgpu_device*) ;
 int cpu_to_le32 (int const) ;
 int dev_warn (int ,char*,int) ;

int amdgpu_gfx_rlc_init_sr(struct amdgpu_device *adev, u32 dws)
{
 const u32 *src_ptr;
 volatile u32 *dst_ptr;
 u32 i;
 int r;


 r = amdgpu_bo_create_reserved(adev, dws * 4, PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_VRAM,
          &adev->gfx.rlc.save_restore_obj,
          &adev->gfx.rlc.save_restore_gpu_addr,
          (void **)&adev->gfx.rlc.sr_ptr);
 if (r) {
  dev_warn(adev->dev, "(%d) create RLC sr bo failed\n", r);
  amdgpu_gfx_rlc_fini(adev);
  return r;
 }


 src_ptr = adev->gfx.rlc.reg_list;
 dst_ptr = adev->gfx.rlc.sr_ptr;
 for (i = 0; i < adev->gfx.rlc.reg_list_size; i++)
  dst_ptr[i] = cpu_to_le32(src_ptr[i]);
 amdgpu_bo_kunmap(adev->gfx.rlc.save_restore_obj);
 amdgpu_bo_unreserve(adev->gfx.rlc.save_restore_obj);

 return 0;
}

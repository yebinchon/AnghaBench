
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int queue_bitmap; } ;
struct TYPE_4__ {TYPE_1__ me; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int AMDGPU_MAX_GFX_QUEUES ;
 int DRM_ERROR (char*) ;
 int amdgpu_gfx_graphics_queue_acquire (struct amdgpu_device*) ;
 int bitmap_zero (int ,int ) ;
 int gfx_v10_0_init_microcode (struct amdgpu_device*) ;

__attribute__((used)) static int gfx_v10_0_me_init(struct amdgpu_device *adev)
{
 int r;

 bitmap_zero(adev->gfx.me.queue_bitmap, AMDGPU_MAX_GFX_QUEUES);

 amdgpu_gfx_graphics_queue_acquire(adev);

 r = gfx_v10_0_init_microcode(adev);
 if (r)
  DRM_ERROR("Failed to load gfx firmware!\n");

 return r;
}

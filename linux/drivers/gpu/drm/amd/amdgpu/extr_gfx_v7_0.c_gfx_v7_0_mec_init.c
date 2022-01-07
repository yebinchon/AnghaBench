
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int num_mec; int num_pipe_per_mec; int hpd_eop_obj; int hpd_eop_gpu_addr; int queue_bitmap; } ;
struct TYPE_4__ {TYPE_1__ mec; } ;
struct amdgpu_device {TYPE_2__ gfx; int dev; } ;


 int AMDGPU_GEM_DOMAIN_VRAM ;
 int AMDGPU_MAX_COMPUTE_QUEUES ;
 int GFX7_MEC_HPD_SIZE ;
 int PAGE_SIZE ;
 int amdgpu_bo_create_reserved (struct amdgpu_device*,size_t,int ,int ,int *,int *,void**) ;
 int amdgpu_bo_kunmap (int ) ;
 int amdgpu_bo_unreserve (int ) ;
 int amdgpu_gfx_compute_queue_acquire (struct amdgpu_device*) ;
 int bitmap_zero (int ,int ) ;
 int dev_warn (int ,char*,int) ;
 int gfx_v7_0_mec_fini (struct amdgpu_device*) ;
 int memset (int *,int ,size_t) ;

__attribute__((used)) static int gfx_v7_0_mec_init(struct amdgpu_device *adev)
{
 int r;
 u32 *hpd;
 size_t mec_hpd_size;

 bitmap_zero(adev->gfx.mec.queue_bitmap, AMDGPU_MAX_COMPUTE_QUEUES);


 amdgpu_gfx_compute_queue_acquire(adev);


 mec_hpd_size = adev->gfx.mec.num_mec * adev->gfx.mec.num_pipe_per_mec
  * GFX7_MEC_HPD_SIZE * 2;

 r = amdgpu_bo_create_reserved(adev, mec_hpd_size, PAGE_SIZE,
          AMDGPU_GEM_DOMAIN_VRAM,
          &adev->gfx.mec.hpd_eop_obj,
          &adev->gfx.mec.hpd_eop_gpu_addr,
          (void **)&hpd);
 if (r) {
  dev_warn(adev->dev, "(%d) create, pin or map of HDP EOP bo failed\n", r);
  gfx_v7_0_mec_fini(adev);
  return r;
 }


 memset(hpd, 0, mec_hpd_size);

 amdgpu_bo_kunmap(adev->gfx.mec.hpd_eop_obj);
 amdgpu_bo_unreserve(adev->gfx.mec.hpd_eop_obj);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct radeon_ring {int ring_size; } ;
struct TYPE_6__ {int installed; } ;
struct TYPE_5__ {int cs_data; scalar_t__ reg_list_size; int reg_list; } ;
struct TYPE_4__ {int dpm_enabled; } ;
struct radeon_device {int flags; int dev; struct radeon_ring* ring; TYPE_3__ irq; TYPE_2__ rlc; TYPE_1__ pm; } ;


 scalar_t__ ARRAY_SIZE (int ) ;
 scalar_t__ ASIC_IS_DCE5 (struct radeon_device*) ;
 int DMA_PACKET (int ,int ,int ) ;
 int DMA_PACKET_NOP ;
 int DRM_ERROR (char*,...) ;
 size_t R600_RING_TYPE_DMA_INDEX ;
 int R600_WB_DMA_RPTR_OFFSET ;
 int RADEON_CP_PACKET2 ;
 int RADEON_IS_AGP ;
 int RADEON_IS_IGP ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int RADEON_WB_CP_RPTR_OFFSET ;
 int dev_err (int ,char*,int) ;
 int evergreen_agp_enable (struct radeon_device*) ;
 int evergreen_cp_load_microcode (struct radeon_device*) ;
 int evergreen_cp_resume (struct radeon_device*) ;
 int evergreen_cs_data ;
 int evergreen_gpu_init (struct radeon_device*) ;
 int evergreen_irq_set (struct radeon_device*) ;
 int evergreen_mc_program (struct radeon_device*) ;
 int evergreen_pcie_gart_enable (struct radeon_device*) ;
 int evergreen_pcie_gen2_enable (struct radeon_device*) ;
 int evergreen_program_aspm (struct radeon_device*) ;
 int evergreen_uvd_resume (struct radeon_device*) ;
 int evergreen_uvd_start (struct radeon_device*) ;
 int ni_mc_load_microcode (struct radeon_device*) ;
 int r600_dma_resume (struct radeon_device*) ;
 int r600_irq_init (struct radeon_device*) ;
 int r600_vram_scratch_init (struct radeon_device*) ;
 int radeon_audio_init (struct radeon_device*) ;
 int radeon_fence_driver_start_ring (struct radeon_device*,size_t) ;
 int radeon_ib_pool_init (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_irq_kms_init (struct radeon_device*) ;
 int radeon_ring_init (struct radeon_device*,struct radeon_ring*,int ,int ,int ) ;
 int radeon_wb_init (struct radeon_device*) ;
 int sumo_rlc_init (struct radeon_device*) ;
 int sumo_rlc_save_restore_register_list ;

__attribute__((used)) static int evergreen_startup(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 int r;


 evergreen_pcie_gen2_enable(rdev);

 evergreen_program_aspm(rdev);


 r = r600_vram_scratch_init(rdev);
 if (r)
  return r;

 evergreen_mc_program(rdev);

 if (ASIC_IS_DCE5(rdev) && !rdev->pm.dpm_enabled) {
  r = ni_mc_load_microcode(rdev);
  if (r) {
   DRM_ERROR("Failed to load MC firmware!\n");
   return r;
  }
 }

 if (rdev->flags & RADEON_IS_AGP) {
  evergreen_agp_enable(rdev);
 } else {
  r = evergreen_pcie_gart_enable(rdev);
  if (r)
   return r;
 }
 evergreen_gpu_init(rdev);


 if (rdev->flags & RADEON_IS_IGP) {
  rdev->rlc.reg_list = sumo_rlc_save_restore_register_list;
  rdev->rlc.reg_list_size =
   (u32)ARRAY_SIZE(sumo_rlc_save_restore_register_list);
  rdev->rlc.cs_data = evergreen_cs_data;
  r = sumo_rlc_init(rdev);
  if (r) {
   DRM_ERROR("Failed to init rlc BOs!\n");
   return r;
  }
 }


 r = radeon_wb_init(rdev);
 if (r)
  return r;

 r = radeon_fence_driver_start_ring(rdev, RADEON_RING_TYPE_GFX_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing CP fences (%d).\n", r);
  return r;
 }

 r = radeon_fence_driver_start_ring(rdev, R600_RING_TYPE_DMA_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing DMA fences (%d).\n", r);
  return r;
 }

 evergreen_uvd_start(rdev);


 if (!rdev->irq.installed) {
  r = radeon_irq_kms_init(rdev);
  if (r)
   return r;
 }

 r = r600_irq_init(rdev);
 if (r) {
  DRM_ERROR("radeon: IH init failed (%d).\n", r);
  radeon_irq_kms_fini(rdev);
  return r;
 }
 evergreen_irq_set(rdev);

 ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
        RADEON_CP_PACKET2);
 if (r)
  return r;

 ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
        DMA_PACKET(DMA_PACKET_NOP, 0, 0));
 if (r)
  return r;

 r = evergreen_cp_load_microcode(rdev);
 if (r)
  return r;
 r = evergreen_cp_resume(rdev);
 if (r)
  return r;
 r = r600_dma_resume(rdev);
 if (r)
  return r;

 evergreen_uvd_resume(rdev);

 r = radeon_ib_pool_init(rdev);
 if (r) {
  dev_err(rdev->dev, "IB initialization failed (%d).\n", r);
  return r;
 }

 r = radeon_audio_init(rdev);
 if (r) {
  DRM_ERROR("radeon: audio init failed\n");
  return r;
 }

 return 0;
}

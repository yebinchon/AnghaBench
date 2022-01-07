
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct radeon_ring {int me; int queue; int ring_size; int wptr_offs; scalar_t__ pipe; } ;
struct TYPE_6__ {int installed; } ;
struct TYPE_5__ {int cp_table_size; int cs_data; void* reg_list_size; void* reg_list; } ;
struct TYPE_4__ {int dpm_enabled; } ;
struct radeon_device {int flags; scalar_t__ family; int dev; struct radeon_ring* ring; scalar_t__ new_fw; TYPE_3__ irq; TYPE_2__ rlc; TYPE_1__ pm; } ;


 int ALIGN (int,int) ;
 scalar_t__ ARRAY_SIZE (void*) ;
 size_t CAYMAN_RING_TYPE_CP1_INDEX ;
 size_t CAYMAN_RING_TYPE_CP2_INDEX ;
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ;
 int CAYMAN_WB_DMA1_RPTR_OFFSET ;
 scalar_t__ CHIP_HAWAII ;
 scalar_t__ CHIP_KAVERI ;
 int CIK_WB_CP1_WPTR_OFFSET ;
 int CIK_WB_CP2_WPTR_OFFSET ;
 int CP_ME_TABLE_SIZE ;
 int DRM_ERROR (char*,...) ;
 void* PACKET3 (int ,int) ;
 int PACKET3_NOP ;
 size_t R600_RING_TYPE_DMA_INDEX ;
 int R600_WB_DMA_RPTR_OFFSET ;
 void* RADEON_CP_PACKET2 ;
 int RADEON_IS_IGP ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int RADEON_WB_CP1_RPTR_OFFSET ;
 int RADEON_WB_CP2_RPTR_OFFSET ;
 int RADEON_WB_CP_RPTR_OFFSET ;
 int SDMA_OPCODE_NOP ;
 void* SDMA_PACKET (int ,int ,int ) ;
 int ci_cs_data ;
 int ci_mc_load_microcode (struct radeon_device*) ;
 int cik_cp_resume (struct radeon_device*) ;
 int cik_gpu_init (struct radeon_device*) ;
 int cik_irq_init (struct radeon_device*) ;
 int cik_irq_set (struct radeon_device*) ;
 int cik_mc_program (struct radeon_device*) ;
 int cik_mec_init (struct radeon_device*) ;
 int cik_pcie_gart_enable (struct radeon_device*) ;
 int cik_pcie_gen3_enable (struct radeon_device*) ;
 int cik_program_aspm (struct radeon_device*) ;
 int cik_sdma_resume (struct radeon_device*) ;
 int cik_uvd_resume (struct radeon_device*) ;
 int cik_uvd_start (struct radeon_device*) ;
 int cik_vce_resume (struct radeon_device*) ;
 int cik_vce_start (struct radeon_device*) ;
 int dev_err (int ,char*,int) ;
 void* kalindi_rlc_save_restore_register_list ;
 int r600_vram_scratch_init (struct radeon_device*) ;
 int radeon_audio_init (struct radeon_device*) ;
 int radeon_fence_driver_start_ring (struct radeon_device*,size_t) ;
 int radeon_ib_pool_init (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_irq_kms_init (struct radeon_device*) ;
 int radeon_ring_init (struct radeon_device*,struct radeon_ring*,int ,int ,void*) ;
 int radeon_vm_manager_init (struct radeon_device*) ;
 int radeon_wb_init (struct radeon_device*) ;
 void* spectre_rlc_save_restore_register_list ;
 int sumo_rlc_init (struct radeon_device*) ;

__attribute__((used)) static int cik_startup(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 u32 nop;
 int r;


 cik_pcie_gen3_enable(rdev);

 cik_program_aspm(rdev);


 r = r600_vram_scratch_init(rdev);
 if (r)
  return r;

 cik_mc_program(rdev);

 if (!(rdev->flags & RADEON_IS_IGP) && !rdev->pm.dpm_enabled) {
  r = ci_mc_load_microcode(rdev);
  if (r) {
   DRM_ERROR("Failed to load MC firmware!\n");
   return r;
  }
 }

 r = cik_pcie_gart_enable(rdev);
 if (r)
  return r;
 cik_gpu_init(rdev);


 if (rdev->flags & RADEON_IS_IGP) {
  if (rdev->family == CHIP_KAVERI) {
   rdev->rlc.reg_list = spectre_rlc_save_restore_register_list;
   rdev->rlc.reg_list_size =
    (u32)ARRAY_SIZE(spectre_rlc_save_restore_register_list);
  } else {
   rdev->rlc.reg_list = kalindi_rlc_save_restore_register_list;
   rdev->rlc.reg_list_size =
    (u32)ARRAY_SIZE(kalindi_rlc_save_restore_register_list);
  }
 }
 rdev->rlc.cs_data = ci_cs_data;
 rdev->rlc.cp_table_size = ALIGN(CP_ME_TABLE_SIZE * 5 * 4, 2048);
 rdev->rlc.cp_table_size += 64 * 1024;
 r = sumo_rlc_init(rdev);
 if (r) {
  DRM_ERROR("Failed to init rlc BOs!\n");
  return r;
 }


 r = radeon_wb_init(rdev);
 if (r)
  return r;


 r = cik_mec_init(rdev);
 if (r) {
  DRM_ERROR("Failed to init MEC BOs!\n");
  return r;
 }

 r = radeon_fence_driver_start_ring(rdev, RADEON_RING_TYPE_GFX_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing CP fences (%d).\n", r);
  return r;
 }

 r = radeon_fence_driver_start_ring(rdev, CAYMAN_RING_TYPE_CP1_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing CP fences (%d).\n", r);
  return r;
 }

 r = radeon_fence_driver_start_ring(rdev, CAYMAN_RING_TYPE_CP2_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing CP fences (%d).\n", r);
  return r;
 }

 r = radeon_fence_driver_start_ring(rdev, R600_RING_TYPE_DMA_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing DMA fences (%d).\n", r);
  return r;
 }

 r = radeon_fence_driver_start_ring(rdev, CAYMAN_RING_TYPE_DMA1_INDEX);
 if (r) {
  dev_err(rdev->dev, "failed initializing DMA fences (%d).\n", r);
  return r;
 }

 cik_uvd_start(rdev);
 cik_vce_start(rdev);


 if (!rdev->irq.installed) {
  r = radeon_irq_kms_init(rdev);
  if (r)
   return r;
 }

 r = cik_irq_init(rdev);
 if (r) {
  DRM_ERROR("radeon: IH init failed (%d).\n", r);
  radeon_irq_kms_fini(rdev);
  return r;
 }
 cik_irq_set(rdev);

 if (rdev->family == CHIP_HAWAII) {
  if (rdev->new_fw)
   nop = PACKET3(PACKET3_NOP, 0x3FFF);
  else
   nop = RADEON_CP_PACKET2;
 } else {
  nop = PACKET3(PACKET3_NOP, 0x3FFF);
 }

 ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, RADEON_WB_CP_RPTR_OFFSET,
        nop);
 if (r)
  return r;



 ring = &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, RADEON_WB_CP1_RPTR_OFFSET,
        nop);
 if (r)
  return r;
 ring->me = 1;
 ring->pipe = 0;
 ring->queue = 0;
 ring->wptr_offs = CIK_WB_CP1_WPTR_OFFSET;


 ring = &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, RADEON_WB_CP2_RPTR_OFFSET,
        nop);
 if (r)
  return r;

 ring->me = 1;
 ring->pipe = 0;
 ring->queue = 1;
 ring->wptr_offs = CIK_WB_CP2_WPTR_OFFSET;

 ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, R600_WB_DMA_RPTR_OFFSET,
        SDMA_PACKET(SDMA_OPCODE_NOP, 0, 0));
 if (r)
  return r;

 ring = &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX];
 r = radeon_ring_init(rdev, ring, ring->ring_size, CAYMAN_WB_DMA1_RPTR_OFFSET,
        SDMA_PACKET(SDMA_OPCODE_NOP, 0, 0));
 if (r)
  return r;

 r = cik_cp_resume(rdev);
 if (r)
  return r;

 r = cik_sdma_resume(rdev);
 if (r)
  return r;

 cik_uvd_resume(rdev);
 cik_vce_resume(rdev);

 r = radeon_ib_pool_init(rdev);
 if (r) {
  dev_err(rdev->dev, "IB initialization failed (%d).\n", r);
  return r;
 }

 r = radeon_vm_manager_init(rdev);
 if (r) {
  dev_err(rdev->dev, "vm manager initialization failed (%d).\n", r);
  return r;
 }

 r = radeon_audio_init(rdev);
 if (r)
  return r;

 return 0;
}

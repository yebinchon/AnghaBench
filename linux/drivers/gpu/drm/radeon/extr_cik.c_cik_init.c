
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct radeon_ring {int * ring_obj; int doorbell_index; } ;
struct TYPE_4__ {int * ring_obj; } ;
struct TYPE_3__ {int atom_context; } ;
struct radeon_device {int flags; int accel_working; int mc_fw; int dev; TYPE_2__ ih; struct radeon_ring* ring; int rlc_fw; int sdma_fw; int mec_fw; int ce_fw; int pfp_fw; int me_fw; int ddev; TYPE_1__ mode_info; int bios; int is_atom_bios; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 size_t CAYMAN_RING_TYPE_CP1_INDEX ;
 size_t CAYMAN_RING_TYPE_CP2_INDEX ;
 size_t CAYMAN_RING_TYPE_DMA1_INDEX ;
 int DRM_ERROR (char*) ;
 int DRM_INFO (char*) ;
 int EINVAL ;
 size_t R600_RING_TYPE_DMA_INDEX ;
 int RADEON_IS_IGP ;
 size_t RADEON_RING_TYPE_GFX_INDEX ;
 int atom_asic_init (int ) ;
 int cik_cp_fini (struct radeon_device*) ;
 int cik_init_golden_registers (struct radeon_device*) ;
 int cik_init_microcode (struct radeon_device*) ;
 int cik_irq_fini (struct radeon_device*) ;
 int cik_mc_init (struct radeon_device*) ;
 int cik_mec_fini (struct radeon_device*) ;
 int cik_pcie_gart_fini (struct radeon_device*) ;
 int cik_scratch_init (struct radeon_device*) ;
 int cik_sdma_fini (struct radeon_device*) ;
 int cik_startup (struct radeon_device*) ;
 int cik_uvd_init (struct radeon_device*) ;
 int cik_vce_init (struct radeon_device*) ;
 int dev_err (int ,char*) ;
 int r600_ih_ring_init (struct radeon_device*,int) ;
 int r600_pcie_gart_init (struct radeon_device*) ;
 int r600_ring_init (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_atombios_init (struct radeon_device*) ;
 int radeon_bo_init (struct radeon_device*) ;
 int radeon_card_posted (struct radeon_device*) ;
 int radeon_doorbell_get (struct radeon_device*,int *) ;
 int radeon_fence_driver_init (struct radeon_device*) ;
 int radeon_get_bios (struct radeon_device*) ;
 int radeon_get_clock_info (int ) ;
 int radeon_ib_pool_fini (struct radeon_device*) ;
 int radeon_irq_kms_fini (struct radeon_device*) ;
 int radeon_pm_init (struct radeon_device*) ;
 int radeon_surface_init (struct radeon_device*) ;
 int radeon_vm_manager_fini (struct radeon_device*) ;
 int radeon_wb_fini (struct radeon_device*) ;
 int sumo_rlc_fini (struct radeon_device*) ;

int cik_init(struct radeon_device *rdev)
{
 struct radeon_ring *ring;
 int r;


 if (!radeon_get_bios(rdev)) {
  if (ASIC_IS_AVIVO(rdev))
   return -EINVAL;
 }

 if (!rdev->is_atom_bios) {
  dev_err(rdev->dev, "Expecting atombios for cayman GPU\n");
  return -EINVAL;
 }
 r = radeon_atombios_init(rdev);
 if (r)
  return r;


 if (!radeon_card_posted(rdev)) {
  if (!rdev->bios) {
   dev_err(rdev->dev, "Card not posted and no BIOS - ignoring\n");
   return -EINVAL;
  }
  DRM_INFO("GPU not posted. posting now...\n");
  atom_asic_init(rdev->mode_info.atom_context);
 }

 cik_init_golden_registers(rdev);

 cik_scratch_init(rdev);

 radeon_surface_init(rdev);

 radeon_get_clock_info(rdev->ddev);


 r = radeon_fence_driver_init(rdev);
 if (r)
  return r;


 r = cik_mc_init(rdev);
 if (r)
  return r;

 r = radeon_bo_init(rdev);
 if (r)
  return r;

 if (rdev->flags & RADEON_IS_IGP) {
  if (!rdev->me_fw || !rdev->pfp_fw || !rdev->ce_fw ||
      !rdev->mec_fw || !rdev->sdma_fw || !rdev->rlc_fw) {
   r = cik_init_microcode(rdev);
   if (r) {
    DRM_ERROR("Failed to load firmware!\n");
    return r;
   }
  }
 } else {
  if (!rdev->me_fw || !rdev->pfp_fw || !rdev->ce_fw ||
      !rdev->mec_fw || !rdev->sdma_fw || !rdev->rlc_fw ||
      !rdev->mc_fw) {
   r = cik_init_microcode(rdev);
   if (r) {
    DRM_ERROR("Failed to load firmware!\n");
    return r;
   }
  }
 }


 radeon_pm_init(rdev);

 ring = &rdev->ring[RADEON_RING_TYPE_GFX_INDEX];
 ring->ring_obj = ((void*)0);
 r600_ring_init(rdev, ring, 1024 * 1024);

 ring = &rdev->ring[CAYMAN_RING_TYPE_CP1_INDEX];
 ring->ring_obj = ((void*)0);
 r600_ring_init(rdev, ring, 1024 * 1024);
 r = radeon_doorbell_get(rdev, &ring->doorbell_index);
 if (r)
  return r;

 ring = &rdev->ring[CAYMAN_RING_TYPE_CP2_INDEX];
 ring->ring_obj = ((void*)0);
 r600_ring_init(rdev, ring, 1024 * 1024);
 r = radeon_doorbell_get(rdev, &ring->doorbell_index);
 if (r)
  return r;

 ring = &rdev->ring[R600_RING_TYPE_DMA_INDEX];
 ring->ring_obj = ((void*)0);
 r600_ring_init(rdev, ring, 256 * 1024);

 ring = &rdev->ring[CAYMAN_RING_TYPE_DMA1_INDEX];
 ring->ring_obj = ((void*)0);
 r600_ring_init(rdev, ring, 256 * 1024);

 cik_uvd_init(rdev);
 cik_vce_init(rdev);

 rdev->ih.ring_obj = ((void*)0);
 r600_ih_ring_init(rdev, 64 * 1024);

 r = r600_pcie_gart_init(rdev);
 if (r)
  return r;

 rdev->accel_working = 1;
 r = cik_startup(rdev);
 if (r) {
  dev_err(rdev->dev, "disabling GPU acceleration\n");
  cik_cp_fini(rdev);
  cik_sdma_fini(rdev);
  cik_irq_fini(rdev);
  sumo_rlc_fini(rdev);
  cik_mec_fini(rdev);
  radeon_wb_fini(rdev);
  radeon_ib_pool_fini(rdev);
  radeon_vm_manager_fini(rdev);
  radeon_irq_kms_fini(rdev);
  cik_pcie_gart_fini(rdev);
  rdev->accel_working = 0;
 }





 if (!rdev->mc_fw && !(rdev->flags & RADEON_IS_IGP)) {
  DRM_ERROR("radeon: MC ucode required for NI+.\n");
  return -EINVAL;
 }

 return 0;
}

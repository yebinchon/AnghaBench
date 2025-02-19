
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cs_section_def {scalar_t__ id; struct cs_extent_def* section; } ;
struct cs_extent_def {int* extent; int reg_count; int reg_index; } ;
struct amdgpu_ring {int dummy; } ;
struct TYPE_3__ {int max_hw_contexts; int pa_sc_tile_steering_override; } ;
struct TYPE_4__ {struct amdgpu_ring* gfx_ring; TYPE_1__ config; } ;
struct amdgpu_device {TYPE_2__ gfx; } ;


 int CE_PARTITION_BASE ;
 int DRM_ERROR (char*,int) ;
 int GC ;
 int PACKET3 (int ,int) ;
 int PACKET3_BASE_INDEX (int ) ;
 int PACKET3_CLEAR_STATE ;
 int PACKET3_CONTEXT_CONTROL ;
 int PACKET3_PREAMBLE_BEGIN_CLEAR_STATE ;
 int PACKET3_PREAMBLE_CNTL ;
 int PACKET3_PREAMBLE_END_CLEAR_STATE ;
 int PACKET3_SET_BASE ;
 int PACKET3_SET_CONTEXT_REG ;
 int PACKET3_SET_CONTEXT_REG_START ;
 scalar_t__ SECT_CONTEXT ;
 int SOC15_REG_OFFSET (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int amdgpu_ring_alloc (struct amdgpu_ring*,int) ;
 int amdgpu_ring_commit (struct amdgpu_ring*) ;
 int amdgpu_ring_write (struct amdgpu_ring*,int) ;
 struct cs_section_def* gfx10_cs_data ;
 int gfx_v10_0_cp_gfx_enable (struct amdgpu_device*,int) ;
 int gfx_v10_0_get_csb_size (struct amdgpu_device*) ;
 int mmCP_DEVICE_ID ;
 int mmCP_MAX_CONTEXT ;
 int mmPA_SC_TILE_STEERING_OVERRIDE ;

__attribute__((used)) static int gfx_v10_0_cp_gfx_start(struct amdgpu_device *adev)
{
 struct amdgpu_ring *ring;
 const struct cs_section_def *sect = ((void*)0);
 const struct cs_extent_def *ext = ((void*)0);
 int r, i;
 int ctx_reg_offset;


 WREG32_SOC15(GC, 0, mmCP_MAX_CONTEXT,
       adev->gfx.config.max_hw_contexts - 1);
 WREG32_SOC15(GC, 0, mmCP_DEVICE_ID, 1);

 gfx_v10_0_cp_gfx_enable(adev, 1);

 ring = &adev->gfx.gfx_ring[0];
 r = amdgpu_ring_alloc(ring, gfx_v10_0_get_csb_size(adev) + 4);
 if (r) {
  DRM_ERROR("amdgpu: cp failed to lock ring (%d).\n", r);
  return r;
 }

 amdgpu_ring_write(ring, PACKET3(PACKET3_PREAMBLE_CNTL, 0));
 amdgpu_ring_write(ring, PACKET3_PREAMBLE_BEGIN_CLEAR_STATE);

 amdgpu_ring_write(ring, PACKET3(PACKET3_CONTEXT_CONTROL, 1));
 amdgpu_ring_write(ring, 0x80000000);
 amdgpu_ring_write(ring, 0x80000000);

 for (sect = gfx10_cs_data; sect->section != ((void*)0); ++sect) {
  for (ext = sect->section; ext->extent != ((void*)0); ++ext) {
   if (sect->id == SECT_CONTEXT) {
    amdgpu_ring_write(ring,
        PACKET3(PACKET3_SET_CONTEXT_REG,
         ext->reg_count));
    amdgpu_ring_write(ring, ext->reg_index -
        PACKET3_SET_CONTEXT_REG_START);
    for (i = 0; i < ext->reg_count; i++)
     amdgpu_ring_write(ring, ext->extent[i]);
   }
  }
 }

 ctx_reg_offset =
  SOC15_REG_OFFSET(GC, 0, mmPA_SC_TILE_STEERING_OVERRIDE) - PACKET3_SET_CONTEXT_REG_START;
 amdgpu_ring_write(ring, PACKET3(PACKET3_SET_CONTEXT_REG, 1));
 amdgpu_ring_write(ring, ctx_reg_offset);
 amdgpu_ring_write(ring, adev->gfx.config.pa_sc_tile_steering_override);

 amdgpu_ring_write(ring, PACKET3(PACKET3_PREAMBLE_CNTL, 0));
 amdgpu_ring_write(ring, PACKET3_PREAMBLE_END_CLEAR_STATE);

 amdgpu_ring_write(ring, PACKET3(PACKET3_CLEAR_STATE, 0));
 amdgpu_ring_write(ring, 0);

 amdgpu_ring_write(ring, PACKET3(PACKET3_SET_BASE, 2));
 amdgpu_ring_write(ring, PACKET3_BASE_INDEX(CE_PARTITION_BASE));
 amdgpu_ring_write(ring, 0x8000);
 amdgpu_ring_write(ring, 0x8000);

 amdgpu_ring_commit(ring);


 ring = &adev->gfx.gfx_ring[1];
 r = amdgpu_ring_alloc(ring, 2);
 if (r) {
  DRM_ERROR("amdgpu: cp failed to lock ring (%d).\n", r);
  return r;
 }

 amdgpu_ring_write(ring, PACKET3(PACKET3_CLEAR_STATE, 0));
 amdgpu_ring_write(ring, 0);

 amdgpu_ring_commit(ring);

 return 0;
}

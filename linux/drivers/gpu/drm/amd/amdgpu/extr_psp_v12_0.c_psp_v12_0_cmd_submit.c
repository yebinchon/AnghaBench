
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef unsigned int uint32_t ;
struct psp_ring {int ring_size; struct psp_gfx_rb_frame* ring_mem; } ;
struct psp_gfx_rb_frame {int fence_value; void* fence_addr_lo; void* fence_addr_hi; void* cmd_buf_addr_lo; void* cmd_buf_addr_hi; } ;
struct psp_context {struct amdgpu_device* adev; struct psp_ring km_ring; } ;
struct amdgpu_device {int dummy; } ;


 int DRM_ERROR (char*,...) ;
 int EINVAL ;
 unsigned int GFX_CTRL_CMD_ID_CONSUME_CMD ;
 int MP0 ;
 unsigned int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_SOC15 (int ,int ,int ,unsigned int) ;
 void* lower_32_bits (int ) ;
 int memset (struct psp_gfx_rb_frame*,int ,int) ;
 int mmMP0_SMN_C2PMSG_101 ;
 int mmMP0_SMN_C2PMSG_102 ;
 int mmMP0_SMN_C2PMSG_67 ;
 scalar_t__ psp_v12_0_support_vmr_ring (struct psp_context*) ;
 void* upper_32_bits (int ) ;

__attribute__((used)) static int psp_v12_0_cmd_submit(struct psp_context *psp,
          uint64_t cmd_buf_mc_addr, uint64_t fence_mc_addr,
          int index)
{
 unsigned int psp_write_ptr_reg = 0;
 struct psp_gfx_rb_frame *write_frame = psp->km_ring.ring_mem;
 struct psp_ring *ring = &psp->km_ring;
 struct psp_gfx_rb_frame *ring_buffer_start = ring->ring_mem;
 struct psp_gfx_rb_frame *ring_buffer_end = ring_buffer_start +
  ring->ring_size / sizeof(struct psp_gfx_rb_frame) - 1;
 struct amdgpu_device *adev = psp->adev;
 uint32_t ring_size_dw = ring->ring_size / 4;
 uint32_t rb_frame_size_dw = sizeof(struct psp_gfx_rb_frame) / 4;


 if (psp_v12_0_support_vmr_ring(psp))
  psp_write_ptr_reg = RREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_102);
 else
  psp_write_ptr_reg = RREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_67);




 if ((psp_write_ptr_reg % ring_size_dw) == 0)
  write_frame = ring_buffer_start;
 else
  write_frame = ring_buffer_start + (psp_write_ptr_reg / rb_frame_size_dw);

 if ((write_frame < ring_buffer_start) || (ring_buffer_end < write_frame)) {
  DRM_ERROR("ring_buffer_start = %p; ring_buffer_end = %p; write_frame = %p\n",
     ring_buffer_start, ring_buffer_end, write_frame);
  DRM_ERROR("write_frame is pointing to address out of bounds\n");
  return -EINVAL;
 }


 memset(write_frame, 0, sizeof(struct psp_gfx_rb_frame));


 write_frame->cmd_buf_addr_hi = upper_32_bits(cmd_buf_mc_addr);
 write_frame->cmd_buf_addr_lo = lower_32_bits(cmd_buf_mc_addr);
 write_frame->fence_addr_hi = upper_32_bits(fence_mc_addr);
 write_frame->fence_addr_lo = lower_32_bits(fence_mc_addr);
 write_frame->fence_value = index;


 psp_write_ptr_reg = (psp_write_ptr_reg + rb_frame_size_dw) % ring_size_dw;
 if (psp_v12_0_support_vmr_ring(psp)) {
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_102, psp_write_ptr_reg);
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_101, GFX_CTRL_CMD_ID_CONSUME_CMD);
 } else
  WREG32_SOC15(MP0, 0, mmMP0_SMN_C2PMSG_67, psp_write_ptr_reg);

 return 0;
}

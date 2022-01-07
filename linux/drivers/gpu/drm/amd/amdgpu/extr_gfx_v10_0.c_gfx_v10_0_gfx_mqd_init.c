
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct v10_gfx_mqd {int cp_mqd_base_addr; int cp_mqd_base_addr_hi; int cp_gfx_mqd_control; int cp_gfx_hqd_queue_priority; int cp_gfx_hqd_quantum; int cp_gfx_hqd_base; int cp_gfx_hqd_base_hi; int cp_gfx_hqd_rptr_addr; int cp_gfx_hqd_rptr_addr_hi; int cp_rb_wptr_poll_addr_lo; int cp_rb_wptr_poll_addr_hi; int cp_gfx_hqd_cntl; int cp_rb_doorbell_control; int cp_gfx_hqd_active; void* cp_gfx_hqd_rptr; scalar_t__ cp_gfx_hqd_vmid; scalar_t__ cp_gfx_hqd_wptr_hi; scalar_t__ cp_gfx_hqd_wptr; } ;
struct amdgpu_ring {int mqd_gpu_addr; int gpu_addr; int rptr_offs; int wptr_offs; int ring_size; int doorbell_index; scalar_t__ wptr; scalar_t__ use_doorbell; struct v10_gfx_mqd* mqd_ptr; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int BUF_SWAP ;
 int CACHE_POLICY ;
 int CP_GFX_HQD_CNTL ;
 int CP_GFX_HQD_QUANTUM ;
 int CP_GFX_HQD_QUEUE_PRIORITY ;
 int CP_GFX_HQD_VMID ;
 int CP_GFX_MQD_CONTROL ;
 int CP_RB_DOORBELL_CONTROL ;
 int DOORBELL_EN ;
 int DOORBELL_OFFSET ;
 int GC ;
 int PRIORITY_LEVEL ;
 int PRIV_STATE ;
 int QUANTUM_EN ;
 int RB_BLKSZ ;
 int RB_BUFSZ ;
 int REG_SET_FIELD (int,int ,int ,int) ;
 void* RREG32_SOC15 (int ,int ,int ) ;
 int VMID ;
 int mmCP_GFX_HQD_CNTL ;
 int mmCP_GFX_HQD_QUANTUM ;
 int mmCP_GFX_HQD_QUEUE_PRIORITY ;
 int mmCP_GFX_HQD_RPTR ;
 int mmCP_GFX_HQD_VMID ;
 int mmCP_GFX_MQD_CONTROL ;
 int mmCP_RB_DOORBELL_CONTROL ;
 int order_base_2 (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int gfx_v10_0_gfx_mqd_init(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 struct v10_gfx_mqd *mqd = ring->mqd_ptr;
 uint64_t hqd_gpu_addr, wb_gpu_addr;
 uint32_t tmp;
 uint32_t rb_bufsz;


 mqd->cp_gfx_hqd_wptr = 0;
 mqd->cp_gfx_hqd_wptr_hi = 0;


 mqd->cp_mqd_base_addr = ring->mqd_gpu_addr & 0xfffffffc;
 mqd->cp_mqd_base_addr_hi = upper_32_bits(ring->mqd_gpu_addr);


 tmp = RREG32_SOC15(GC, 0, mmCP_GFX_MQD_CONTROL);
 tmp = REG_SET_FIELD(tmp, CP_GFX_MQD_CONTROL, VMID, 0);
 tmp = REG_SET_FIELD(tmp, CP_GFX_MQD_CONTROL, PRIV_STATE, 1);
 tmp = REG_SET_FIELD(tmp, CP_GFX_MQD_CONTROL, CACHE_POLICY, 0);
 mqd->cp_gfx_mqd_control = tmp;


 tmp = RREG32_SOC15(GC, 0, mmCP_GFX_HQD_VMID);
 tmp = REG_SET_FIELD(tmp, CP_GFX_HQD_VMID, VMID, 0);
 mqd->cp_gfx_hqd_vmid = 0;



 tmp = RREG32_SOC15(GC, 0, mmCP_GFX_HQD_QUEUE_PRIORITY);
 tmp = REG_SET_FIELD(tmp, CP_GFX_HQD_QUEUE_PRIORITY, PRIORITY_LEVEL, 0);
 mqd->cp_gfx_hqd_queue_priority = tmp;


 tmp = RREG32_SOC15(GC, 0, mmCP_GFX_HQD_QUANTUM);
 tmp = REG_SET_FIELD(tmp, CP_GFX_HQD_QUANTUM, QUANTUM_EN, 1);
 mqd->cp_gfx_hqd_quantum = tmp;


 hqd_gpu_addr = ring->gpu_addr >> 8;
 mqd->cp_gfx_hqd_base = hqd_gpu_addr;
 mqd->cp_gfx_hqd_base_hi = upper_32_bits(hqd_gpu_addr);


 wb_gpu_addr = adev->wb.gpu_addr + (ring->rptr_offs * 4);
 mqd->cp_gfx_hqd_rptr_addr = wb_gpu_addr & 0xfffffffc;
 mqd->cp_gfx_hqd_rptr_addr_hi =
  upper_32_bits(wb_gpu_addr) & 0xffff;


 wb_gpu_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);
 mqd->cp_rb_wptr_poll_addr_lo = wb_gpu_addr & 0xfffffffc;
 mqd->cp_rb_wptr_poll_addr_hi = upper_32_bits(wb_gpu_addr) & 0xffff;


 rb_bufsz = order_base_2(ring->ring_size / 4) - 1;
 tmp = RREG32_SOC15(GC, 0, mmCP_GFX_HQD_CNTL);
 tmp = REG_SET_FIELD(tmp, CP_GFX_HQD_CNTL, RB_BUFSZ, rb_bufsz);
 tmp = REG_SET_FIELD(tmp, CP_GFX_HQD_CNTL, RB_BLKSZ, rb_bufsz - 2);



 mqd->cp_gfx_hqd_cntl = tmp;


 tmp = RREG32_SOC15(GC, 0, mmCP_RB_DOORBELL_CONTROL);
 if (ring->use_doorbell) {
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
        DOORBELL_OFFSET, ring->doorbell_index);
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
        DOORBELL_EN, 1);
 } else
  tmp = REG_SET_FIELD(tmp, CP_RB_DOORBELL_CONTROL,
        DOORBELL_EN, 0);
 mqd->cp_rb_doorbell_control = tmp;


 ring->wptr = 0;
 mqd->cp_gfx_hqd_rptr = RREG32_SOC15(GC, 0, mmCP_GFX_HQD_RPTR);


 mqd->cp_gfx_hqd_active = 1;

 return 0;
}

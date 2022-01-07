
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef void* uint32_t ;
struct v10_compute_mqd {int header; int compute_pipelinestat_enable; int compute_static_thread_mgmt_se0; int compute_static_thread_mgmt_se1; int compute_static_thread_mgmt_se2; int compute_static_thread_mgmt_se3; int compute_misc_reserved; int cp_hqd_eop_base_addr_lo; int cp_hqd_eop_base_addr_hi; int cp_mqd_base_addr_lo; int cp_mqd_base_addr_hi; int cp_hqd_pq_base_lo; int cp_hqd_pq_base_hi; int cp_hqd_pq_rptr_report_addr_lo; int cp_hqd_pq_rptr_report_addr_hi; int cp_hqd_pq_wptr_poll_addr_lo; int cp_hqd_pq_wptr_poll_addr_hi; int cp_hqd_active; void* cp_hqd_ib_control; void* cp_hqd_persistent_state; scalar_t__ cp_hqd_vmid; void* cp_hqd_pq_rptr; void* cp_hqd_pq_doorbell_control; void* cp_hqd_pq_control; void* cp_mqd_control; scalar_t__ cp_hqd_pq_wptr_hi; scalar_t__ cp_hqd_pq_wptr_lo; scalar_t__ cp_hqd_dequeue_request; void* cp_hqd_eop_control; } ;
struct amdgpu_ring {int eop_gpu_addr; int doorbell_index; int mqd_gpu_addr; int gpu_addr; int ring_size; int rptr_offs; int wptr_offs; scalar_t__ wptr; scalar_t__ use_doorbell; struct v10_compute_mqd* mqd_ptr; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int gpu_addr; } ;
struct amdgpu_device {TYPE_1__ wb; } ;


 int AMDGPU_GPU_PAGE_SIZE ;
 int CP_HQD_EOP_CONTROL ;
 int CP_HQD_IB_CONTROL ;
 int CP_HQD_PERSISTENT_STATE ;
 int CP_HQD_PQ_CONTROL ;
 int CP_HQD_PQ_DOORBELL_CONTROL ;
 int CP_MQD_CONTROL ;
 int DOORBELL_EN ;
 int DOORBELL_HIT ;
 int DOORBELL_OFFSET ;
 int DOORBELL_SOURCE ;
 int ENDIAN_SWAP ;
 int EOP_SIZE ;
 int GC ;
 int GFX10_MEC_HPD_SIZE ;
 int KMD_QUEUE ;
 int MIN_IB_AVAIL_SIZE ;
 int PRELOAD_SIZE ;
 int PRIV_STATE ;
 int QUEUE_SIZE ;
 void* REG_SET_FIELD (void*,int ,int ,int) ;
 int RPTR_BLOCK_SIZE ;
 void* RREG32_SOC15 (int ,int ,int ) ;
 int TUNNEL_DISPATCH ;
 int UNORD_DISPATCH ;
 int VMID ;
 int mmCP_HQD_EOP_CONTROL ;
 int mmCP_HQD_IB_CONTROL ;
 int mmCP_HQD_PERSISTENT_STATE ;
 int mmCP_HQD_PQ_CONTROL ;
 int mmCP_HQD_PQ_DOORBELL_CONTROL ;
 int mmCP_HQD_PQ_RPTR ;
 int mmCP_MQD_CONTROL ;
 int order_base_2 (int) ;
 int upper_32_bits (int) ;

__attribute__((used)) static int gfx_v10_0_compute_mqd_init(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 struct v10_compute_mqd *mqd = ring->mqd_ptr;
 uint64_t hqd_gpu_addr, wb_gpu_addr, eop_base_addr;
 uint32_t tmp;

 mqd->header = 0xC0310800;
 mqd->compute_pipelinestat_enable = 0x00000001;
 mqd->compute_static_thread_mgmt_se0 = 0xffffffff;
 mqd->compute_static_thread_mgmt_se1 = 0xffffffff;
 mqd->compute_static_thread_mgmt_se2 = 0xffffffff;
 mqd->compute_static_thread_mgmt_se3 = 0xffffffff;
 mqd->compute_misc_reserved = 0x00000003;

 eop_base_addr = ring->eop_gpu_addr >> 8;
 mqd->cp_hqd_eop_base_addr_lo = eop_base_addr;
 mqd->cp_hqd_eop_base_addr_hi = upper_32_bits(eop_base_addr);


 tmp = RREG32_SOC15(GC, 0, mmCP_HQD_EOP_CONTROL);
 tmp = REG_SET_FIELD(tmp, CP_HQD_EOP_CONTROL, EOP_SIZE,
   (order_base_2(GFX10_MEC_HPD_SIZE / 4) - 1));

 mqd->cp_hqd_eop_control = tmp;


 tmp = RREG32_SOC15(GC, 0, mmCP_HQD_PQ_DOORBELL_CONTROL);

 if (ring->use_doorbell) {
  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
        DOORBELL_OFFSET, ring->doorbell_index);
  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
        DOORBELL_EN, 1);
  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
        DOORBELL_SOURCE, 0);
  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
        DOORBELL_HIT, 0);
 } else {
  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
        DOORBELL_EN, 0);
 }

 mqd->cp_hqd_pq_doorbell_control = tmp;


 ring->wptr = 0;
 mqd->cp_hqd_dequeue_request = 0;
 mqd->cp_hqd_pq_rptr = 0;
 mqd->cp_hqd_pq_wptr_lo = 0;
 mqd->cp_hqd_pq_wptr_hi = 0;


 mqd->cp_mqd_base_addr_lo = ring->mqd_gpu_addr & 0xfffffffc;
 mqd->cp_mqd_base_addr_hi = upper_32_bits(ring->mqd_gpu_addr);


 tmp = RREG32_SOC15(GC, 0, mmCP_MQD_CONTROL);
 tmp = REG_SET_FIELD(tmp, CP_MQD_CONTROL, VMID, 0);
 mqd->cp_mqd_control = tmp;


 hqd_gpu_addr = ring->gpu_addr >> 8;
 mqd->cp_hqd_pq_base_lo = hqd_gpu_addr;
 mqd->cp_hqd_pq_base_hi = upper_32_bits(hqd_gpu_addr);


 tmp = RREG32_SOC15(GC, 0, mmCP_HQD_PQ_CONTROL);
 tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_CONTROL, QUEUE_SIZE,
       (order_base_2(ring->ring_size / 4) - 1));
 tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_CONTROL, RPTR_BLOCK_SIZE,
       ((order_base_2(AMDGPU_GPU_PAGE_SIZE / 4) - 1) << 8));



 tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_CONTROL, UNORD_DISPATCH, 0);
 tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_CONTROL, TUNNEL_DISPATCH, 0);
 tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_CONTROL, PRIV_STATE, 1);
 tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_CONTROL, KMD_QUEUE, 1);
 mqd->cp_hqd_pq_control = tmp;


 wb_gpu_addr = adev->wb.gpu_addr + (ring->rptr_offs * 4);
 mqd->cp_hqd_pq_rptr_report_addr_lo = wb_gpu_addr & 0xfffffffc;
 mqd->cp_hqd_pq_rptr_report_addr_hi =
  upper_32_bits(wb_gpu_addr) & 0xffff;


 wb_gpu_addr = adev->wb.gpu_addr + (ring->wptr_offs * 4);
 mqd->cp_hqd_pq_wptr_poll_addr_lo = wb_gpu_addr & 0xfffffffc;
 mqd->cp_hqd_pq_wptr_poll_addr_hi = upper_32_bits(wb_gpu_addr) & 0xffff;

 tmp = 0;

 if (ring->use_doorbell) {
  tmp = RREG32_SOC15(GC, 0, mmCP_HQD_PQ_DOORBELL_CONTROL);
  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
    DOORBELL_OFFSET, ring->doorbell_index);

  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
        DOORBELL_EN, 1);
  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
        DOORBELL_SOURCE, 0);
  tmp = REG_SET_FIELD(tmp, CP_HQD_PQ_DOORBELL_CONTROL,
        DOORBELL_HIT, 0);
 }

 mqd->cp_hqd_pq_doorbell_control = tmp;


 ring->wptr = 0;
 mqd->cp_hqd_pq_rptr = RREG32_SOC15(GC, 0, mmCP_HQD_PQ_RPTR);


 mqd->cp_hqd_vmid = 0;

 tmp = RREG32_SOC15(GC, 0, mmCP_HQD_PERSISTENT_STATE);
 tmp = REG_SET_FIELD(tmp, CP_HQD_PERSISTENT_STATE, PRELOAD_SIZE, 0x53);
 mqd->cp_hqd_persistent_state = tmp;


 tmp = RREG32_SOC15(GC, 0, mmCP_HQD_IB_CONTROL);
 tmp = REG_SET_FIELD(tmp, CP_HQD_IB_CONTROL, MIN_IB_AVAIL_SIZE, 3);
 mqd->cp_hqd_ib_control = tmp;


 mqd->cp_hqd_active = 1;

 return 0;
}

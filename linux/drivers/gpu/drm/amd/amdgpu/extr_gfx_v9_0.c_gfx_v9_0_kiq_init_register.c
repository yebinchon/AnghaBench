
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9_mqd {int cp_hqd_eop_base_addr_lo; int cp_hqd_eop_base_addr_hi; int cp_hqd_eop_control; int cp_hqd_pq_doorbell_control; int cp_hqd_dequeue_request; int cp_hqd_pq_rptr; int cp_hqd_pq_wptr_lo; int cp_hqd_pq_wptr_hi; int cp_mqd_base_addr_lo; int cp_mqd_base_addr_hi; int cp_mqd_control; int cp_hqd_pq_base_lo; int cp_hqd_pq_base_hi; int cp_hqd_pq_control; int cp_hqd_pq_rptr_report_addr_lo; int cp_hqd_pq_rptr_report_addr_hi; int cp_hqd_pq_wptr_poll_addr_lo; int cp_hqd_pq_wptr_poll_addr_hi; int cp_hqd_vmid; int cp_hqd_persistent_state; int cp_hqd_active; } ;
struct amdgpu_ring {scalar_t__ use_doorbell; struct v9_mqd* mqd_ptr; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int kiq; int userqueue_end; } ;
struct amdgpu_device {int usec_timeout; TYPE_1__ doorbell_index; } ;


 int CP_PQ_STATUS ;
 int CP_PQ_WPTR_POLL_CNTL ;
 int DOORBELL_ENABLE ;
 int EN ;
 int GC ;
 int RREG32_SOC15 (int ,int ,int ) ;
 int WREG32_FIELD15 (int ,int ,int ,int ,int) ;
 int WREG32_SOC15 (int ,int ,int ,int) ;
 int WREG32_SOC15_RLC (int ,int ,int ,int) ;
 int mmCP_HQD_ACTIVE ;
 int mmCP_HQD_DEQUEUE_REQUEST ;
 int mmCP_HQD_EOP_BASE_ADDR ;
 int mmCP_HQD_EOP_BASE_ADDR_HI ;
 int mmCP_HQD_EOP_CONTROL ;
 int mmCP_HQD_PERSISTENT_STATE ;
 int mmCP_HQD_PQ_BASE ;
 int mmCP_HQD_PQ_BASE_HI ;
 int mmCP_HQD_PQ_CONTROL ;
 int mmCP_HQD_PQ_DOORBELL_CONTROL ;
 int mmCP_HQD_PQ_RPTR ;
 int mmCP_HQD_PQ_RPTR_REPORT_ADDR ;
 int mmCP_HQD_PQ_RPTR_REPORT_ADDR_HI ;
 int mmCP_HQD_PQ_WPTR_HI ;
 int mmCP_HQD_PQ_WPTR_LO ;
 int mmCP_HQD_PQ_WPTR_POLL_ADDR ;
 int mmCP_HQD_PQ_WPTR_POLL_ADDR_HI ;
 int mmCP_HQD_VMID ;
 int mmCP_MEC_DOORBELL_RANGE_LOWER ;
 int mmCP_MEC_DOORBELL_RANGE_UPPER ;
 int mmCP_MQD_BASE_ADDR ;
 int mmCP_MQD_BASE_ADDR_HI ;
 int mmCP_MQD_CONTROL ;
 int udelay (int) ;

__attribute__((used)) static int gfx_v9_0_kiq_init_register(struct amdgpu_ring *ring)
{
 struct amdgpu_device *adev = ring->adev;
 struct v9_mqd *mqd = ring->mqd_ptr;
 int j;


 WREG32_FIELD15(GC, 0, CP_PQ_WPTR_POLL_CNTL, EN, 0);

 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_EOP_BASE_ADDR,
        mqd->cp_hqd_eop_base_addr_lo);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_EOP_BASE_ADDR_HI,
        mqd->cp_hqd_eop_base_addr_hi);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_EOP_CONTROL,
        mqd->cp_hqd_eop_control);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_DOORBELL_CONTROL,
        mqd->cp_hqd_pq_doorbell_control);


 if (RREG32_SOC15(GC, 0, mmCP_HQD_ACTIVE) & 1) {
  WREG32_SOC15_RLC(GC, 0, mmCP_HQD_DEQUEUE_REQUEST, 1);
  for (j = 0; j < adev->usec_timeout; j++) {
   if (!(RREG32_SOC15(GC, 0, mmCP_HQD_ACTIVE) & 1))
    break;
   udelay(1);
  }
  WREG32_SOC15_RLC(GC, 0, mmCP_HQD_DEQUEUE_REQUEST,
         mqd->cp_hqd_dequeue_request);
  WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_RPTR,
         mqd->cp_hqd_pq_rptr);
  WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_WPTR_LO,
         mqd->cp_hqd_pq_wptr_lo);
  WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_WPTR_HI,
         mqd->cp_hqd_pq_wptr_hi);
 }


 WREG32_SOC15_RLC(GC, 0, mmCP_MQD_BASE_ADDR,
        mqd->cp_mqd_base_addr_lo);
 WREG32_SOC15_RLC(GC, 0, mmCP_MQD_BASE_ADDR_HI,
        mqd->cp_mqd_base_addr_hi);


 WREG32_SOC15_RLC(GC, 0, mmCP_MQD_CONTROL,
        mqd->cp_mqd_control);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_BASE,
        mqd->cp_hqd_pq_base_lo);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_BASE_HI,
        mqd->cp_hqd_pq_base_hi);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_CONTROL,
        mqd->cp_hqd_pq_control);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_RPTR_REPORT_ADDR,
    mqd->cp_hqd_pq_rptr_report_addr_lo);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_RPTR_REPORT_ADDR_HI,
    mqd->cp_hqd_pq_rptr_report_addr_hi);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_WPTR_POLL_ADDR,
        mqd->cp_hqd_pq_wptr_poll_addr_lo);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_WPTR_POLL_ADDR_HI,
        mqd->cp_hqd_pq_wptr_poll_addr_hi);


 if (ring->use_doorbell) {
  WREG32_SOC15(GC, 0, mmCP_MEC_DOORBELL_RANGE_LOWER,
     (adev->doorbell_index.kiq * 2) << 2);
  WREG32_SOC15(GC, 0, mmCP_MEC_DOORBELL_RANGE_UPPER,
     (adev->doorbell_index.userqueue_end * 2) << 2);
 }

 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_DOORBELL_CONTROL,
        mqd->cp_hqd_pq_doorbell_control);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_WPTR_LO,
        mqd->cp_hqd_pq_wptr_lo);
 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PQ_WPTR_HI,
        mqd->cp_hqd_pq_wptr_hi);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_VMID, mqd->cp_hqd_vmid);

 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_PERSISTENT_STATE,
        mqd->cp_hqd_persistent_state);


 WREG32_SOC15_RLC(GC, 0, mmCP_HQD_ACTIVE,
        mqd->cp_hqd_active);

 if (ring->use_doorbell)
  WREG32_FIELD15(GC, 0, CP_PQ_STATUS, DOORBELL_ENABLE, 1);

 return 0;
}

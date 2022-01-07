
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vi_mqd {scalar_t__ cp_mqd_base_addr_lo; scalar_t__ cp_hqd_eop_rptr; scalar_t__ cp_hqd_eop_wptr; scalar_t__ cp_hqd_eop_wptr_mem; } ;
struct amdgpu_device {scalar_t__ asic_type; } ;


 scalar_t__ CHIP_TONGA ;
 int CP_PQ_WPTR_POLL_CNTL ;
 int EN ;
 int WREG32 (scalar_t__,scalar_t__) ;
 int WREG32_FIELD (int ,int ,int ) ;
 scalar_t__ mmCP_HQD_ACTIVE ;
 scalar_t__ mmCP_HQD_EOP_CONTROL ;
 scalar_t__ mmCP_HQD_EOP_EVENTS ;
 scalar_t__ mmCP_HQD_EOP_RPTR ;
 scalar_t__ mmCP_HQD_EOP_WPTR ;
 scalar_t__ mmCP_HQD_EOP_WPTR_MEM ;
 scalar_t__ mmCP_HQD_ERROR ;
 scalar_t__ mmCP_HQD_VMID ;
 scalar_t__ mmCP_MQD_BASE_ADDR ;

int gfx_v8_0_mqd_commit(struct amdgpu_device *adev,
   struct vi_mqd *mqd)
{
 uint32_t mqd_reg;
 uint32_t *mqd_data;


 mqd_data = &mqd->cp_mqd_base_addr_lo;


 WREG32_FIELD(CP_PQ_WPTR_POLL_CNTL, EN, 0);


 for (mqd_reg = mmCP_HQD_VMID; mqd_reg <= mmCP_HQD_EOP_CONTROL; mqd_reg++)
  WREG32(mqd_reg, mqd_data[mqd_reg - mmCP_MQD_BASE_ADDR]);






 if (adev->asic_type != CHIP_TONGA) {
  WREG32(mmCP_HQD_EOP_RPTR, mqd->cp_hqd_eop_rptr);
  WREG32(mmCP_HQD_EOP_WPTR, mqd->cp_hqd_eop_wptr);
  WREG32(mmCP_HQD_EOP_WPTR_MEM, mqd->cp_hqd_eop_wptr_mem);
 }

 for (mqd_reg = mmCP_HQD_EOP_EVENTS; mqd_reg <= mmCP_HQD_ERROR; mqd_reg++)
  WREG32(mqd_reg, mqd_data[mqd_reg - mmCP_MQD_BASE_ADDR]);


 for (mqd_reg = mmCP_MQD_BASE_ADDR; mqd_reg <= mmCP_HQD_ACTIVE; mqd_reg++)
  WREG32(mqd_reg, mqd_data[mqd_reg - mmCP_MQD_BASE_ADDR]);

 return 0;
}

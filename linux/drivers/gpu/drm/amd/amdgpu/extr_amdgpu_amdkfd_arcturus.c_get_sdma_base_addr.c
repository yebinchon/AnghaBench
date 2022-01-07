
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct amdgpu_device {int dummy; } ;


 int SDMA0 ;
 int SDMA1 ;
 int SDMA2 ;
 int SDMA3 ;
 int SDMA4 ;
 int SDMA5 ;
 int SDMA6 ;
 int SDMA7 ;
 unsigned int SOC15_REG_OFFSET (int ,int ,unsigned int) ;
 unsigned int mmSDMA0_RLC0_RB_CNTL ;
 unsigned int mmSDMA0_RLC1_RB_CNTL ;
 unsigned int mmSDMA1_RLC0_RB_CNTL ;
 unsigned int mmSDMA2_RLC0_RB_CNTL ;
 unsigned int mmSDMA3_RLC0_RB_CNTL ;
 unsigned int mmSDMA4_RLC0_RB_CNTL ;
 unsigned int mmSDMA5_RLC0_RB_CNTL ;
 unsigned int mmSDMA6_RLC0_RB_CNTL ;
 unsigned int mmSDMA7_RLC0_RB_CNTL ;
 int pr_debug (char*,unsigned int) ;

__attribute__((used)) static uint32_t get_sdma_base_addr(struct amdgpu_device *adev,
    unsigned int engine_id,
    unsigned int queue_id)
{
 uint32_t base[8] = {
  SOC15_REG_OFFSET(SDMA0, 0,
     mmSDMA0_RLC0_RB_CNTL) - mmSDMA0_RLC0_RB_CNTL,
  SOC15_REG_OFFSET(SDMA1, 0,
     mmSDMA1_RLC0_RB_CNTL) - mmSDMA1_RLC0_RB_CNTL,
  SOC15_REG_OFFSET(SDMA2, 0,
     mmSDMA2_RLC0_RB_CNTL) - mmSDMA2_RLC0_RB_CNTL,
  SOC15_REG_OFFSET(SDMA3, 0,
     mmSDMA3_RLC0_RB_CNTL) - mmSDMA3_RLC0_RB_CNTL,
  SOC15_REG_OFFSET(SDMA4, 0,
     mmSDMA4_RLC0_RB_CNTL) - mmSDMA4_RLC0_RB_CNTL,
  SOC15_REG_OFFSET(SDMA5, 0,
     mmSDMA5_RLC0_RB_CNTL) - mmSDMA5_RLC0_RB_CNTL,
  SOC15_REG_OFFSET(SDMA6, 0,
     mmSDMA6_RLC0_RB_CNTL) - mmSDMA6_RLC0_RB_CNTL,
  SOC15_REG_OFFSET(SDMA7, 0,
     mmSDMA7_RLC0_RB_CNTL) - mmSDMA7_RLC0_RB_CNTL
 };
 uint32_t retval;

 retval = base[engine_id] + queue_id * (mmSDMA0_RLC1_RB_CNTL -
            mmSDMA0_RLC0_RB_CNTL);

 pr_debug("sdma base address: 0x%x\n", retval);

 return retval;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmcu {int dummy; } ;
struct dce_dmcu {int dummy; } ;


 int DCI_MEM_PWR_STATUS ;
 int DMCU_IRAM_MEM_PWR_STATE ;
 int DMCU_IRAM_RD_CTRL ;
 int DMCU_IRAM_RD_DATA ;
 int DMCU_RAM_ACCESS_CTRL ;
 int IRAM_HOST_ACCESS_EN ;
 int REG_READ (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 int REG_WRITE (int ,int) ;
 struct dce_dmcu* TO_DCE_DMCU (struct dmcu*) ;

__attribute__((used)) static void dce_get_dmcu_psr_state(struct dmcu *dmcu, uint32_t *psr_state)
{
 struct dce_dmcu *dmcu_dce = TO_DCE_DMCU(dmcu);

 uint32_t psr_state_offset = 0xf0;


 REG_UPDATE(DMCU_RAM_ACCESS_CTRL, IRAM_HOST_ACCESS_EN, 1);

 REG_WAIT(DCI_MEM_PWR_STATUS, DMCU_IRAM_MEM_PWR_STATE, 0, 2, 10);


 REG_WRITE(DMCU_IRAM_RD_CTRL, psr_state_offset);


 *psr_state = REG_READ(DMCU_IRAM_RD_DATA);




 REG_UPDATE(DMCU_RAM_ACCESS_CTRL, IRAM_HOST_ACCESS_EN, 0);
}

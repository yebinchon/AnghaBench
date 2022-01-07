
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct dmcu {int dummy; } ;
struct dce_dmcu {int dummy; } ;


 int MASTER_COMM_CMD_REG ;
 int MASTER_COMM_CMD_REG_BYTE0 ;
 int MASTER_COMM_CNTL_REG ;
 int MASTER_COMM_INTERRUPT ;
 int PSR_ENABLE ;
 int PSR_EXIT ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int ,unsigned int,unsigned int) ;
 struct dce_dmcu* TO_DCE_DMCU (struct dmcu*) ;
 int dce_get_dmcu_psr_state (struct dmcu*,scalar_t__*) ;
 int udelay (int) ;

__attribute__((used)) static void dce_dmcu_set_psr_enable(struct dmcu *dmcu, bool enable, bool wait)
{
 struct dce_dmcu *dmcu_dce = TO_DCE_DMCU(dmcu);
 unsigned int dmcu_max_retry_on_wait_reg_ready = 801;
 unsigned int dmcu_wait_reg_ready_interval = 100;

 unsigned int retryCount;
 uint32_t psr_state = 0;


 REG_WAIT(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 0,
    dmcu_wait_reg_ready_interval,
    dmcu_max_retry_on_wait_reg_ready);


 if (enable)
  REG_UPDATE(MASTER_COMM_CMD_REG, MASTER_COMM_CMD_REG_BYTE0,
    PSR_ENABLE);
 else
  REG_UPDATE(MASTER_COMM_CMD_REG, MASTER_COMM_CMD_REG_BYTE0,
    PSR_EXIT);


 REG_UPDATE(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);
 if (wait == 1) {
  for (retryCount = 0; retryCount <= 100; retryCount++) {
   dce_get_dmcu_psr_state(dmcu, &psr_state);
   if (enable) {
    if (psr_state != 0)
     break;
   } else {
    if (psr_state == 0)
     break;
   }
   udelay(10);
  }
 }
}

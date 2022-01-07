
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int wait_loop; } ;
union dce_dmcu_psr_config_data_wait_loop_reg1 {scalar_t__ u32; TYPE_1__ bits; } ;
struct dmcu {unsigned int cached_wait_loop_number; int ctx; } ;
struct dce_dmcu {int dummy; } ;


 int MASTER_COMM_CMD_REG ;
 int MASTER_COMM_CMD_REG_BYTE0 ;
 int MASTER_COMM_CNTL_REG ;
 int MASTER_COMM_DATA_REG1 ;
 int MASTER_COMM_INTERRUPT ;
 int PSR_SET_WAITLOOP ;
 int REG (int ) ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 struct dce_dmcu* TO_DCE_DMCU (struct dmcu*) ;
 int dce_is_dmcu_initialized (struct dmcu*) ;
 int dm_write_reg (int ,int ,scalar_t__) ;

__attribute__((used)) static void dce_psr_wait_loop(
 struct dmcu *dmcu,
 unsigned int wait_loop_number)
{
 struct dce_dmcu *dmcu_dce = TO_DCE_DMCU(dmcu);
 union dce_dmcu_psr_config_data_wait_loop_reg1 masterCmdData1;

 if (dmcu->cached_wait_loop_number == wait_loop_number)
  return;


 if (!dce_is_dmcu_initialized(dmcu))
  return;


 REG_WAIT(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 0, 1, 10000);

 masterCmdData1.u32 = 0;
 masterCmdData1.bits.wait_loop = wait_loop_number;
 dmcu->cached_wait_loop_number = wait_loop_number;
 dm_write_reg(dmcu->ctx, REG(MASTER_COMM_DATA_REG1), masterCmdData1.u32);


 REG_UPDATE(MASTER_COMM_CMD_REG, MASTER_COMM_CMD_REG_BYTE0, PSR_SET_WAITLOOP);


 REG_UPDATE(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);
}

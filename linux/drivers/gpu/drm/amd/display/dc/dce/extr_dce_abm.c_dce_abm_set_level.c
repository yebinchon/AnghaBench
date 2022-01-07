
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_abm {int dummy; } ;
struct abm {int dmcu_is_running; } ;


 int MASTER_COMM_CMD_REG ;
 int MASTER_COMM_CMD_REG_BYTE0 ;
 int MASTER_COMM_CMD_REG_BYTE2 ;
 int MASTER_COMM_CNTL_REG ;
 int MASTER_COMM_INTERRUPT ;
 int MCP_ABM_LEVEL_SET ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 struct dce_abm* TO_DCE_ABM (struct abm*) ;

__attribute__((used)) static bool dce_abm_set_level(struct abm *abm, uint32_t level)
{
 struct dce_abm *abm_dce = TO_DCE_ABM(abm);

 if (abm->dmcu_is_running == 0)
  return 1;

 REG_WAIT(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 0,
   1, 80000);


 REG_UPDATE_2(MASTER_COMM_CMD_REG,
   MASTER_COMM_CMD_REG_BYTE0, MCP_ABM_LEVEL_SET,
   MASTER_COMM_CMD_REG_BYTE2, level);


 REG_UPDATE(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);

 return 1;
}

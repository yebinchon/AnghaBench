
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dce_abm {int dummy; } ;
struct abm {int dmcu_is_running; } ;


 int MASTER_COMM_CMD_REG ;
 int MASTER_COMM_CMD_REG_BYTE0 ;
 int MASTER_COMM_CMD_REG_BYTE1 ;
 int MASTER_COMM_CNTL_REG ;
 int MASTER_COMM_DATA_REG1 ;
 int MASTER_COMM_INTERRUPT ;
 int MCP_ABM_PIPE_SET ;
 int REG_UPDATE (int ,int ,int) ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int) ;
 int REG_WAIT (int ,int ,int ,int,int) ;
 int REG_WRITE (int ,int) ;
 struct dce_abm* TO_DCE_ABM (struct abm*) ;

__attribute__((used)) static bool dce_abm_set_pipe(struct abm *abm, uint32_t controller_id)
{
 struct dce_abm *abm_dce = TO_DCE_ABM(abm);
 uint32_t rampingBoundary = 0xFFFF;

 if (abm->dmcu_is_running == 0)
  return 1;

 REG_WAIT(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 0,
   1, 80000);


 REG_WRITE(MASTER_COMM_DATA_REG1, rampingBoundary);


 REG_UPDATE_2(MASTER_COMM_CMD_REG,
   MASTER_COMM_CMD_REG_BYTE0, MCP_ABM_PIPE_SET,
   MASTER_COMM_CMD_REG_BYTE1, controller_id);


 REG_UPDATE(MASTER_COMM_CNTL_REG, MASTER_COMM_INTERRUPT, 1);

 return 1;
}

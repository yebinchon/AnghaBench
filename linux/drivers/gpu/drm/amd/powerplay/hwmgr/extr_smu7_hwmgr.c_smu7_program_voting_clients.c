
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int * voting_rights_clients; } ;
struct pp_hwmgr {int device; scalar_t__ backend; } ;


 int CGS_IND_REG__SMC ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int ) ;
 int RESET_BUSY_CNT ;
 int RESET_SCLK_CNT ;
 int SCLK_PWRMGT_CNTL ;
 int cgs_write_ind_register (int ,int ,scalar_t__,int ) ;
 scalar_t__ ixCG_FREQ_TRAN_VOTING_0 ;

__attribute__((used)) static int smu7_program_voting_clients(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 int i;


 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   SCLK_PWRMGT_CNTL, RESET_SCLK_CNT, 0);
 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   SCLK_PWRMGT_CNTL, RESET_BUSY_CNT, 0);

 for (i = 0; i < 8; i++)
  cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
     ixCG_FREQ_TRAN_VOTING_0 + i * 4,
     data->voting_rights_clients[i]);
 return 0;
}

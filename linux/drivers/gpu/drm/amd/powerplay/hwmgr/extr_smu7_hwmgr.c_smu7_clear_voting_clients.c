
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int) ;
 int RESET_BUSY_CNT ;
 int RESET_SCLK_CNT ;
 int SCLK_PWRMGT_CNTL ;
 int cgs_write_ind_register (int ,int ,scalar_t__,int ) ;
 scalar_t__ ixCG_FREQ_TRAN_VOTING_0 ;

__attribute__((used)) static int smu7_clear_voting_clients(struct pp_hwmgr *hwmgr)
{
 int i;


 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   SCLK_PWRMGT_CNTL, RESET_SCLK_CNT, 1);
 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC,
   SCLK_PWRMGT_CNTL, RESET_BUSY_CNT, 1);

 for (i = 0; i < 8; i++)
  cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
    ixCG_FREQ_TRAN_VOTING_0 + i * 4, 0);

 return 0;
}

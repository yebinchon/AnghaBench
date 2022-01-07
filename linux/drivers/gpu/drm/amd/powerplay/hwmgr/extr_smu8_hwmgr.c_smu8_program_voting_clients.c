
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int SMU8_VOTINGRIGHTSCLIENTS_DFLT0 ;
 int cgs_write_ind_register (int ,int ,int ,int ) ;
 int ixCG_FREQ_TRAN_VOTING_0 ;

__attribute__((used)) static void smu8_program_voting_clients(struct pp_hwmgr *hwmgr)
{
 cgs_write_ind_register(hwmgr->device, CGS_IND_REG__SMC,
    ixCG_FREQ_TRAN_VOTING_0,
    SMU8_VOTINGRIGHTSCLIENTS_DFLT0);
}

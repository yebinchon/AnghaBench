
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__SMC ;
 int PHM_WRITE_INDIRECT_FIELD (int ,int ,int ,int ,int ) ;
 int SCLK_PWRMGT_CNTL ;
 int SCLK_PWRMGT_OFF ;

__attribute__((used)) static int smu7_enable_sclk_control(struct pp_hwmgr *hwmgr)
{
 PHM_WRITE_INDIRECT_FIELD(hwmgr->device, CGS_IND_REG__SMC, SCLK_PWRMGT_CNTL,
   SCLK_PWRMGT_OFF, 0);
 return 0;
}

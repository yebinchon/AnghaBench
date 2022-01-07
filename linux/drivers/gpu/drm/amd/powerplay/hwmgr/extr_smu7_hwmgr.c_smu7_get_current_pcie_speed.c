
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct pp_hwmgr {int device; } ;


 int CGS_IND_REG__PCIE ;
 int LC_CURRENT_DATA_RATE ;
 int PCIE_LC_SPEED_CNTL ;
 scalar_t__ PHM_GET_FIELD (int ,int ,int ) ;
 int cgs_read_ind_register (int ,int ,int ) ;
 int ixPCIE_LC_SPEED_CNTL ;

__attribute__((used)) static uint16_t smu7_get_current_pcie_speed(struct pp_hwmgr *hwmgr)
{
 uint32_t speedCntl = 0;


 speedCntl = cgs_read_ind_register(hwmgr->device, CGS_IND_REG__PCIE,
   ixPCIE_LC_SPEED_CNTL);
 return((uint16_t)PHM_GET_FIELD(speedCntl,
   PCIE_LC_SPEED_CNTL, LC_CURRENT_DATA_RATE));
}

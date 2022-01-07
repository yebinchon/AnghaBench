
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pp_hwmgr {int device; } ;
struct TYPE_3__ {int dfy_size; int * dfy_data; int dfy_addr_lo; int dfy_addr_hi; int dfy_cntl; } ;
typedef TYPE_1__ PWR_DFY_Section ;


 int cgs_write_register (int ,int ,int ) ;
 int mmCP_DFY_ADDR_HI ;
 int mmCP_DFY_ADDR_LO ;
 int mmCP_DFY_CNTL ;
 int mmCP_DFY_DATA_0 ;

__attribute__((used)) static void execute_pwr_dfy_table(struct pp_hwmgr *hwmgr, const PWR_DFY_Section *section)
{
 int i;

 cgs_write_register(hwmgr->device, mmCP_DFY_CNTL, section->dfy_cntl);
 cgs_write_register(hwmgr->device, mmCP_DFY_ADDR_HI, section->dfy_addr_hi);
 cgs_write_register(hwmgr->device, mmCP_DFY_ADDR_LO, section->dfy_addr_lo);
 for (i = 0; i < section->dfy_size; i++)
  cgs_write_register(hwmgr->device, mmCP_DFY_DATA_0, section->dfy_data[i]);
}

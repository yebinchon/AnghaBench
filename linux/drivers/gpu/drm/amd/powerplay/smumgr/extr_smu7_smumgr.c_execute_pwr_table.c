
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pp_hwmgr {int device; } ;
struct TYPE_3__ {int reg; int data; } ;
typedef TYPE_1__ PWR_Command_Table ;


 int cgs_write_register (int ,int,int) ;

__attribute__((used)) static void execute_pwr_table(struct pp_hwmgr *hwmgr, const PWR_Command_Table *pvirus, int size)
{
 int i;
 uint32_t reg, data;

 for (i = 0; i < size; i++) {
  reg = pvirus->reg;
  data = pvirus->data;
  if (reg != 0xffffffff)
   cgs_write_register(hwmgr->device, reg, data);
  else
   break;
  pvirus++;
 }
}

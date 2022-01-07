
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_bios {int dummy; } ;


 int BIOS_SCRATCH_6 ;
 int REG_UPDATE (int ,int ,int) ;
 int S6_ACC_MODE ;

void bios_set_scratch_acc_mode_change(
 struct dc_bios *bios)
{
 REG_UPDATE(BIOS_SCRATCH_6, S6_ACC_MODE, 1);
}

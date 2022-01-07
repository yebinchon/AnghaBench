
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_bios {int dummy; } ;


 int BIOS_SCRATCH_6 ;
 int REG_GET (int ,int ,int*) ;
 int S6_ACC_MODE ;

bool bios_is_accelerated_mode(
 struct dc_bios *bios)
{
 uint32_t acc_mode;
 REG_GET(BIOS_SCRATCH_6, S6_ACC_MODE, &acc_mode);
 return (acc_mode == 1);
}

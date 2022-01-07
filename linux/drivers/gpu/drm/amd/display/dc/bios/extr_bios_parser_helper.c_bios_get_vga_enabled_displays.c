
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dc_bios {int dummy; } ;


 int BIOS_SCRATCH_3 ;
 int REG_READ (int ) ;

uint32_t bios_get_vga_enabled_displays(
 struct dc_bios *bios)
{
 uint32_t active_disp = 1;

 active_disp = REG_READ(BIOS_SCRATCH_3) & 0XFFFF;
 return active_disp;
}

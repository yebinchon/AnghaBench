
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_bios {int dummy; } ;


 int bios_set_scratch_critical_state (struct dc_bios*,int) ;

__attribute__((used)) static void bios_parser_set_scratch_critical_state(
 struct dc_bios *dcb,
 bool state)
{
 bios_set_scratch_critical_state(dcb, state);
}

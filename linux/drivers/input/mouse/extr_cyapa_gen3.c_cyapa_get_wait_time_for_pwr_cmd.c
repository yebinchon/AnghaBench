
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;





 int cyapa_pwr_cmd_to_sleep_time (int) ;

__attribute__((used)) static u16 cyapa_get_wait_time_for_pwr_cmd(u8 pwr_mode)
{
 switch (pwr_mode) {
 case 129: return 20;
 case 130: return 20;
 case 128: return 20;
 default: return cyapa_pwr_cmd_to_sleep_time(pwr_mode) + 50;
 }
}

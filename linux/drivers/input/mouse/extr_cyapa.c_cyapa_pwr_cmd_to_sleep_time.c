
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



u16 cyapa_pwr_cmd_to_sleep_time(u8 pwr_mode)
{
 u8 encoded_time = pwr_mode >> 2;

 return (encoded_time < 10) ? encoded_time * 10
       : (encoded_time - 5) * 20;
}

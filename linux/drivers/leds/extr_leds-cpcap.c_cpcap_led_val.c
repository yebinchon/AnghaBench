
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u16 cpcap_led_val(u8 current_limit, u8 duty_cycle)
{
 current_limit &= 0x1f;
 duty_cycle &= 0x0f;

 return current_limit << 4 | duty_cycle;
}

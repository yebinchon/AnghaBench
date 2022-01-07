
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cyapa {int dummy; } ;
typedef int ping ;


 int PIP_DEEP_SLEEP_STATE_ON ;
 int cyapa_i2c_pip_write (struct cyapa*,int*,int) ;
 int cyapa_pip_deep_sleep (struct cyapa*,int) ;

__attribute__((used)) static int cyapa_gen6_deep_sleep(struct cyapa *cyapa, u8 state)
{
 u8 ping[] = { 0x04, 0x00, 0x05, 0x00, 0x2f, 0x00, 0x00 };

 if (state == PIP_DEEP_SLEEP_STATE_ON)





  cyapa_i2c_pip_write(cyapa, ping, sizeof(ping));

 return cyapa_pip_deep_sleep(cyapa, state);
}

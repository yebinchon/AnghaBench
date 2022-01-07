
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int LED_ACTIVE (int ,int) ;
 int LP5523_MAX_LEDS ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static void lp5523_mux_to_array(u16 led_mux, char *array)
{
 int i, pos = 0;
 for (i = 0; i < LP5523_MAX_LEDS; i++)
  pos += sprintf(array + pos, "%x", LED_ACTIVE(led_mux, i));

 array[pos] = '\0';
}

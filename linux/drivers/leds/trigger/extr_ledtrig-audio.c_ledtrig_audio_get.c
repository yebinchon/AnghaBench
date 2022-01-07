
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
typedef enum led_audio { ____Placeholder_led_audio } led_audio ;


 int* audio_state ;

enum led_brightness ledtrig_audio_get(enum led_audio type)
{
 return audio_state[type];
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum led_brightness { ____Placeholder_led_brightness } led_brightness ;
typedef enum led_audio { ____Placeholder_led_audio } led_audio ;


 int* audio_state ;
 int led_trigger_event (int ,int) ;
 int * ledtrig_audio ;

void ledtrig_audio_set(enum led_audio type, enum led_brightness state)
{
 audio_state[type] = state;
 led_trigger_event(ledtrig_audio[type], state);
}

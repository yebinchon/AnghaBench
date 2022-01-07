
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_disable_detector_state {int channel_level; int notch_level; int tone_cycle_duration; int good_cycles; int hit; void* tone_present; int notch; } ;
typedef int int16_t ;


 void* FALSE ;
 void* TRUE ;
 int abs (int ) ;
 int biquad2 (int *,int ) ;

__attribute__((used)) static inline int
echo_can_disable_detector_update(struct ec_disable_detector_state *det,
     int16_t amp)
{
 int16_t notched;

 notched = biquad2(&det->notch, amp);






 det->channel_level += ((abs(amp) - det->channel_level) >> 5);
 det->notch_level += ((abs(notched) - det->notch_level) >> 4);
 if (det->channel_level > 280) {


  if (det->notch_level * 6 < det->channel_level) {

   if (!det->tone_present) {

    if (det->tone_cycle_duration >= 425 * 8
        && det->tone_cycle_duration <= 475 * 8) {
     det->good_cycles++;
     if (det->good_cycles > 2)
      det->hit = TRUE;
    }
    det->tone_cycle_duration = 0;
   }
   det->tone_present = TRUE;
  } else
   det->tone_present = FALSE;
  det->tone_cycle_duration++;
 } else {
  det->tone_present = FALSE;
  det->tone_cycle_duration = 0;
  det->good_cycles = 0;
 }
 return det->hit;
}

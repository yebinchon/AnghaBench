
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ec_disable_detector_state {scalar_t__ hit; scalar_t__ good_cycles; scalar_t__ tone_cycle_duration; int tone_present; scalar_t__ notch_level; scalar_t__ channel_level; int notch; } ;
typedef int int32_t ;


 int FALSE ;
 int biquad2_init (int *,int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
echo_can_disable_detector_init(struct ec_disable_detector_state *det)
{



 biquad2_init(&det->notch,
       (int32_t)(-0.7600000 * 32768.0),
       (int32_t)(-0.1183852 * 32768.0),
       (int32_t)(-0.5104039 * 32768.0),
       (int32_t)(0.1567596 * 32768.0),
       (int32_t)(1.0000000 * 32768.0));

 det->channel_level = 0;
 det->notch_level = 0;
 det->tone_present = FALSE;
 det->tone_cycle_duration = 0;
 det->good_cycles = 0;
 det->hit = 0;
}

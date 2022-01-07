
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_sdvo {int dummy; } ;


 int SDVO_CMD_SET_AUDIO_STAT ;
 int intel_sdvo_set_value (struct intel_sdvo*,int ,int *,int) ;

__attribute__((used)) static bool intel_sdvo_set_audio_state(struct intel_sdvo *intel_sdvo,
           u8 audio_state)
{
 return intel_sdvo_set_value(intel_sdvo, SDVO_CMD_SET_AUDIO_STAT,
        &audio_state, 1);
}

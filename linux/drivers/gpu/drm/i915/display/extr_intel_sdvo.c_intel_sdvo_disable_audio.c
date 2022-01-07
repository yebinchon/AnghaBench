
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_sdvo {int dummy; } ;


 int intel_sdvo_set_audio_state (struct intel_sdvo*,int ) ;

__attribute__((used)) static void intel_sdvo_disable_audio(struct intel_sdvo *intel_sdvo)
{
 intel_sdvo_set_audio_state(intel_sdvo, 0);
}

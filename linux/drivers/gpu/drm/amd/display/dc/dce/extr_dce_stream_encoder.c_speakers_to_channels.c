
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ RRC_FRC; scalar_t__ RC_RLC_FLC; scalar_t__ RL_RC; scalar_t__ RR; int FC; int LFE; int FR; int FL; } ;
union audio_cea_channels {TYPE_1__ channels; int member_0; } ;
struct audio_speaker_flags {scalar_t__ RLC_RRC; scalar_t__ FLC_FRC; scalar_t__ RC; scalar_t__ RL_RR; int FC; int LFE; int FL_FR; } ;



__attribute__((used)) static union audio_cea_channels speakers_to_channels(
 struct audio_speaker_flags speaker_flags)
{
 union audio_cea_channels cea_channels = {0};


 cea_channels.channels.FL = speaker_flags.FL_FR;
 cea_channels.channels.FR = speaker_flags.FL_FR;
 cea_channels.channels.LFE = speaker_flags.LFE;
 cea_channels.channels.FC = speaker_flags.FC;




 if (speaker_flags.RL_RR) {
  cea_channels.channels.RL_RC = speaker_flags.RL_RR;
  cea_channels.channels.RR = speaker_flags.RL_RR;
  cea_channels.channels.RC_RLC_FLC = speaker_flags.RC;
 } else {
  cea_channels.channels.RL_RC = speaker_flags.RC;
 }


 if (speaker_flags.FLC_FRC) {
  cea_channels.channels.RC_RLC_FLC = speaker_flags.FLC_FRC;
  cea_channels.channels.RRC_FRC = speaker_flags.FLC_FRC;
 } else {
  cea_channels.channels.RC_RLC_FLC = speaker_flags.RLC_RRC;
  cea_channels.channels.RRC_FRC = speaker_flags.RLC_RRC;
 }

 return cea_channels;
}

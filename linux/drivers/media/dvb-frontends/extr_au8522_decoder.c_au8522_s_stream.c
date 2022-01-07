
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct au8522_state {int operational_mode; scalar_t__ current_frequency; } ;


 int AU8522_ANALOG_MODE ;
 int AU8522_SUSPEND_MODE ;
 int AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H ;
 int au8522_video_set (struct au8522_state*) ;
 int au8522_writereg (struct au8522_state*,int ,int) ;
 int msleep (int) ;
 int set_audio_input (struct au8522_state*) ;
 struct au8522_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int au8522_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct au8522_state *state = to_state(sd);

 if (enable) {





  state->current_frequency = 0;

  au8522_writereg(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
    0x01);
  msleep(10);

  au8522_video_set(state);
  set_audio_input(state);

  state->operational_mode = AU8522_ANALOG_MODE;
 } else {


  au8522_writereg(state, AU8522_SYSTEM_MODULE_CONTROL_0_REG0A4H,
    1 << 5);
  state->operational_mode = AU8522_SUSPEND_MODE;
 }
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct au8522_state {int std; scalar_t__ operational_mode; } ;


 scalar_t__ AU8522_ANALOG_MODE ;
 int EINVAL ;
 int V4L2_STD_NTSC_M ;
 int V4L2_STD_PAL_M ;
 int au8522_video_set (struct au8522_state*) ;
 struct au8522_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int au8522_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct au8522_state *state = to_state(sd);

 if ((std & (V4L2_STD_PAL_M | V4L2_STD_NTSC_M)) == 0)
  return -EINVAL;

 state->std = std;

 if (state->operational_mode == AU8522_ANALOG_MODE)
  au8522_video_set(state);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_tuner {int signal; int capability; int rxsubchans; int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct au8522_state {int dummy; } ;


 int V4L2_TUNER_CAP_LANG1 ;
 int V4L2_TUNER_CAP_LANG2 ;
 int V4L2_TUNER_CAP_SAP ;
 int V4L2_TUNER_CAP_STEREO ;
 int V4L2_TUNER_MODE_STEREO ;
 int V4L2_TUNER_SUB_MONO ;
 int au8522_readreg (struct au8522_state*,int) ;
 struct au8522_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int au8522_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 int val = 0;
 struct au8522_state *state = to_state(sd);
 u8 lock_status;
 u8 pll_status;


 lock_status = au8522_readreg(state, 0x00);
 pll_status = au8522_readreg(state, 0x7e);
 if ((lock_status == 0xa2) && (pll_status & 0x10))
  vt->signal = 0xffff;
 else
  vt->signal = 0x00;

 vt->capability |=
  V4L2_TUNER_CAP_STEREO | V4L2_TUNER_CAP_LANG1 |
  V4L2_TUNER_CAP_LANG2 | V4L2_TUNER_CAP_SAP;

 val = V4L2_TUNER_SUB_MONO;
 vt->rxsubchans = val;
 vt->audmode = V4L2_TUNER_MODE_STEREO;
 return 0;
}

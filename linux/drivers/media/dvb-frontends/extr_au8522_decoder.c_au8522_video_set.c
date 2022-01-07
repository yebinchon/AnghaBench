
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct au8522_state {int vid_input; } ;







 int AU8522_INPUT_CONTROL_REG081H_CVBS_CH1 ;
 int AU8522_INPUT_CONTROL_REG081H_CVBS_CH2 ;
 int AU8522_INPUT_CONTROL_REG081H_CVBS_CH3 ;
 int AU8522_INPUT_CONTROL_REG081H_CVBS_CH4 ;
 int AU8522_INPUT_CONTROL_REG081H_CVBS_CH4_SIF ;
 int AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH13 ;
 int AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH24 ;


 int au8522_setup_cvbs_mode (struct au8522_state*,int ) ;
 int au8522_setup_cvbs_tuner_mode (struct au8522_state*,int ) ;
 int au8522_setup_svideo_mode (struct au8522_state*,int ) ;
 int au8522_writereg (struct au8522_state*,int,int) ;

__attribute__((used)) static void au8522_video_set(struct au8522_state *state)
{
 u8 input_mode;

 au8522_writereg(state, 0xa4, 1 << 5);

 switch (state->vid_input) {
 case 134:
  input_mode = AU8522_INPUT_CONTROL_REG081H_CVBS_CH1;
  au8522_setup_cvbs_mode(state, input_mode);
  break;
 case 133:
  input_mode = AU8522_INPUT_CONTROL_REG081H_CVBS_CH2;
  au8522_setup_cvbs_mode(state, input_mode);
  break;
 case 132:
  input_mode = AU8522_INPUT_CONTROL_REG081H_CVBS_CH3;
  au8522_setup_cvbs_mode(state, input_mode);
  break;
 case 131:
  input_mode = AU8522_INPUT_CONTROL_REG081H_CVBS_CH4;
  au8522_setup_cvbs_mode(state, input_mode);
  break;
 case 129:
  input_mode = AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH13;
  au8522_setup_svideo_mode(state, input_mode);
  break;
 case 128:
  input_mode = AU8522_INPUT_CONTROL_REG081H_SVIDEO_CH24;
  au8522_setup_svideo_mode(state, input_mode);
  break;
 default:
 case 130:
  input_mode = AU8522_INPUT_CONTROL_REG081H_CVBS_CH4_SIF;
  au8522_setup_cvbs_tuner_mode(state, input_mode);
  break;
 }
}

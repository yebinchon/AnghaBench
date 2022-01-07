
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint16_t ;
struct command_table_helper {scalar_t__ (* encoder_mode_bp_to_atom ) (int ,int ) ;int (* encoder_action_to_atom ) (int ) ;scalar_t__ (* transmitter_bp_to_atom ) (scalar_t__) ;} ;
struct bp_encoder_control {scalar_t__ transmitter; int pixel_clock; scalar_t__ lanes_number; int enable_dp_audio; int signal; int action; } ;
struct TYPE_4__ {int ucLinkSel; void* ucTransmitterSel; } ;
struct TYPE_5__ {void* ucLaneNum; void* ucEncoderMode; int usPixelClock; int ucAction; TYPE_1__ acConfig; } ;
typedef TYPE_2__ DIG_ENCODER_CONTROL_PARAMETERS_V2 ;


 scalar_t__ TRANSMITTER_UNIPHY_B ;
 scalar_t__ TRANSMITTER_UNIPHY_D ;
 scalar_t__ TRANSMITTER_UNIPHY_F ;
 int cpu_to_le16 (int ) ;
 scalar_t__ stub1 (scalar_t__) ;
 int stub2 (int ) ;
 scalar_t__ stub3 (int ,int ) ;

void dal_cmd_table_helper_assign_control_parameter(
 const struct command_table_helper *h,
 struct bp_encoder_control *control,
 DIG_ENCODER_CONTROL_PARAMETERS_V2 *ctrl_param)
{






 if ((control->transmitter == TRANSMITTER_UNIPHY_B) ||
  (control->transmitter == TRANSMITTER_UNIPHY_D) ||
  (control->transmitter == TRANSMITTER_UNIPHY_F)) {




  ctrl_param->acConfig.ucLinkSel = 1;
 }







 ctrl_param->acConfig.ucTransmitterSel =
  (uint8_t)(h->transmitter_bp_to_atom(control->transmitter));


 ctrl_param->ucAction = h->encoder_action_to_atom(control->action);
 ctrl_param->usPixelClock = cpu_to_le16((uint16_t)(control->pixel_clock / 10));
 ctrl_param->ucEncoderMode =
  (uint8_t)(h->encoder_mode_bp_to_atom(
   control->signal, control->enable_dp_audio));
 ctrl_param->ucLaneNum = (uint8_t)(control->lanes_number);
}

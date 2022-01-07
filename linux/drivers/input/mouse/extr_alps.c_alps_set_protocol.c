
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {struct alps_data* private; } ;
struct alps_protocol_info {int version; int flags; int mask0; int byte0; } ;
struct alps_data {int proto_version; int x_max; int y_max; int x_bits; int y_bits; int* fw_ver; void* addr_command; void* nibble_commands; void* set_abs_params; int decode_fields; void* process_packet; int hw_init; int flags; int mask0; int byte0; int timer; } ;


 int ALPS_BUTTONPAD ;
 int ALPS_DUALPOINT ;
 int ALPS_REG_BASE_PINNACLE ;
 int ALPS_REG_BASE_RUSHMORE ;
 int ALPS_REG_BASE_V7 ;
 int ALPS_STICK_BITS ;
 int EIO ;
 void* PSMOUSE_CMD_DISABLE ;
 void* PSMOUSE_CMD_RESET_WRAP ;
 int alps_decode_dolphin ;
 int alps_decode_packet_v7 ;
 int alps_decode_pinnacle ;
 int alps_decode_rushmore ;
 int alps_decode_ss4_v2 ;
 int alps_dmi_has_separate_stick_buttons ;
 int alps_dolphin_get_device_area (struct psmouse*,struct alps_data*) ;
 int alps_flush_packet ;
 int alps_hw_init_dolphin_v1 ;
 int alps_hw_init_rushmore_v3 ;
 int alps_hw_init_ss4_v2 ;
 int alps_hw_init_v1_v2 ;
 int alps_hw_init_v3 ;
 int alps_hw_init_v4 ;
 int alps_hw_init_v6 ;
 int alps_hw_init_v7 ;
 int alps_probe_trackstick_v3_v7 (struct psmouse*,int ) ;
 void* alps_process_packet_ss4_v2 ;
 void* alps_process_packet_v1_v2 ;
 void* alps_process_packet_v3 ;
 void* alps_process_packet_v4 ;
 void* alps_process_packet_v6 ;
 void* alps_process_packet_v7 ;
 void* alps_process_touchpad_packet_v3_v5 ;
 void* alps_set_abs_params_semi_mt ;
 void* alps_set_abs_params_ss4_v2 ;
 void* alps_set_abs_params_st ;
 void* alps_set_abs_params_v7 ;
 int alps_set_defaults_ss4_v2 (struct psmouse*,struct alps_data*) ;
 void* alps_v3_nibble_commands ;
 void* alps_v4_nibble_commands ;
 void* alps_v6_nibble_commands ;
 int dmi_check_system (int ) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int alps_set_protocol(struct psmouse *psmouse,
        struct alps_data *priv,
        const struct alps_protocol_info *protocol)
{
 psmouse->private = priv;

 timer_setup(&priv->timer, alps_flush_packet, 0);

 priv->proto_version = protocol->version;
 priv->byte0 = protocol->byte0;
 priv->mask0 = protocol->mask0;
 priv->flags = protocol->flags;

 priv->x_max = 2000;
 priv->y_max = 1400;
 priv->x_bits = 15;
 priv->y_bits = 11;

 switch (priv->proto_version) {
 case 136:
 case 135:
  priv->hw_init = alps_hw_init_v1_v2;
  priv->process_packet = alps_process_packet_v1_v2;
  priv->set_abs_params = alps_set_abs_params_st;
  priv->x_max = 1023;
  priv->y_max = 767;
  if (dmi_check_system(alps_dmi_has_separate_stick_buttons))
   priv->flags |= ALPS_STICK_BITS;
  break;

 case 134:
  priv->hw_init = alps_hw_init_v3;
  priv->process_packet = alps_process_packet_v3;
  priv->set_abs_params = alps_set_abs_params_semi_mt;
  priv->decode_fields = alps_decode_pinnacle;
  priv->nibble_commands = alps_v3_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_RESET_WRAP;

  if (alps_probe_trackstick_v3_v7(psmouse,
      ALPS_REG_BASE_PINNACLE) < 0)
   priv->flags &= ~ALPS_DUALPOINT;

  break;

 case 133:
  priv->hw_init = alps_hw_init_rushmore_v3;
  priv->process_packet = alps_process_packet_v3;
  priv->set_abs_params = alps_set_abs_params_semi_mt;
  priv->decode_fields = alps_decode_rushmore;
  priv->nibble_commands = alps_v3_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_RESET_WRAP;
  priv->x_bits = 16;
  priv->y_bits = 12;

  if (alps_probe_trackstick_v3_v7(psmouse,
      ALPS_REG_BASE_RUSHMORE) < 0)
   priv->flags &= ~ALPS_DUALPOINT;

  break;

 case 132:
  priv->hw_init = alps_hw_init_v4;
  priv->process_packet = alps_process_packet_v4;
  priv->set_abs_params = alps_set_abs_params_semi_mt;
  priv->nibble_commands = alps_v4_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_DISABLE;
  break;

 case 131:
  priv->hw_init = alps_hw_init_dolphin_v1;
  priv->process_packet = alps_process_touchpad_packet_v3_v5;
  priv->decode_fields = alps_decode_dolphin;
  priv->set_abs_params = alps_set_abs_params_semi_mt;
  priv->nibble_commands = alps_v3_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_RESET_WRAP;
  priv->x_bits = 23;
  priv->y_bits = 12;

  if (alps_dolphin_get_device_area(psmouse, priv))
   return -EIO;

  break;

 case 130:
  priv->hw_init = alps_hw_init_v6;
  priv->process_packet = alps_process_packet_v6;
  priv->set_abs_params = alps_set_abs_params_st;
  priv->nibble_commands = alps_v6_nibble_commands;
  priv->x_max = 2047;
  priv->y_max = 1535;
  break;

 case 129:
  priv->hw_init = alps_hw_init_v7;
  priv->process_packet = alps_process_packet_v7;
  priv->decode_fields = alps_decode_packet_v7;
  priv->set_abs_params = alps_set_abs_params_v7;
  priv->nibble_commands = alps_v3_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_RESET_WRAP;
  priv->x_max = 0xfff;
  priv->y_max = 0x7ff;

  if (priv->fw_ver[1] != 0xba)
   priv->flags |= ALPS_BUTTONPAD;

  if (alps_probe_trackstick_v3_v7(psmouse, ALPS_REG_BASE_V7) < 0)
   priv->flags &= ~ALPS_DUALPOINT;

  break;

 case 128:
  priv->hw_init = alps_hw_init_ss4_v2;
  priv->process_packet = alps_process_packet_ss4_v2;
  priv->decode_fields = alps_decode_ss4_v2;
  priv->set_abs_params = alps_set_abs_params_ss4_v2;
  priv->nibble_commands = alps_v3_nibble_commands;
  priv->addr_command = PSMOUSE_CMD_RESET_WRAP;

  if (alps_set_defaults_ss4_v2(psmouse, priv))
   return -EIO;

  break;
 }

 return 0;
}

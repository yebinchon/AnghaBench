
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ps2dev {int dummy; } ;
struct psmouse {char* vendor; int model; int dev; struct ps2dev ps2dev; } ;
struct ps2pp_info {scalar_t__ kind; } ;


 int BTN_MIDDLE ;
 int ENXIO ;
 int EV_KEY ;
 scalar_t__ PS2PP_KIND_TP3 ;
 int PSMOUSE_CMD_GETINFO ;
 int PSMOUSE_CMD_SETRES ;
 int PSMOUSE_CMD_SETSCALE11 ;
 struct ps2pp_info* get_model_info (int) ;
 int input_set_capability (int ,int ,int ) ;
 int ps2_command (struct ps2dev*,int*,int) ;
 int ps2pp_cmd (struct psmouse*,int*,int) ;
 int ps2pp_set_model_properties (struct psmouse*,struct ps2pp_info const*,int) ;
 int ps2pp_set_smartscroll (struct psmouse*,int) ;
 int ps2pp_setup_protocol (struct psmouse*,struct ps2pp_info const*) ;
 int psmouse_warn (struct psmouse*,char*,int) ;

int ps2pp_detect(struct psmouse *psmouse, bool set_properties)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 const struct ps2pp_info *model_info;
 u8 param[4];
 u8 model, buttons;
 bool use_ps2pp = 0;
 int error;

 param[0] = 0;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRES);
 ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
 ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
 ps2_command(ps2dev, ((void*)0), PSMOUSE_CMD_SETSCALE11);
 param[1] = 0;
 ps2_command(ps2dev, param, PSMOUSE_CMD_GETINFO);

 model = ((param[0] >> 4) & 0x07) | ((param[0] << 3) & 0x78);
 buttons = param[1];

 if (!model || !buttons)
  return -ENXIO;

 model_info = get_model_info(model);
 if (model_info) {




  if (model_info->kind == PS2PP_KIND_TP3) {


   param[0] = 0x11; param[1] = 0x04; param[2] = 0x68;
   ps2_command(ps2dev, param, 0x30d1);

   param[0] = 0x11; param[1] = 0x05; param[2] = 0x0b;
   ps2_command(ps2dev, param, 0x30d1);

   param[0] = 0x11; param[1] = 0x09; param[2] = 0xc3;
   ps2_command(ps2dev, param, 0x30d1);

   param[0] = 0;
   if (!ps2_command(ps2dev, param, 0x13d1) &&
       param[0] == 0x06 && param[1] == 0x00 &&
       param[2] == 0x14) {
    use_ps2pp = 1;
   }

  } else {

   param[0] = param[1] = param[2] = 0;
   ps2pp_cmd(psmouse, param, 0x39);
   ps2pp_cmd(psmouse, param, 0xDB);

   if ((param[0] & 0x78) == 0x48 &&
       (param[1] & 0xf3) == 0xc2 &&
       (param[2] & 0x03) == ((param[1] >> 2) & 3)) {
    ps2pp_set_smartscroll(psmouse, 0);
    use_ps2pp = 1;
   }
  }

 } else {
  psmouse_warn(psmouse,
        "Detected unknown Logitech mouse model %d\n",
        model);
 }

 if (set_properties) {
  psmouse->vendor = "Logitech";
  psmouse->model = model;

  if (use_ps2pp) {
   error = ps2pp_setup_protocol(psmouse, model_info);
   if (error)
    return error;
  }

  if (buttons >= 3)
   input_set_capability(psmouse->dev, EV_KEY, BTN_MIDDLE);

  if (model_info)
   ps2pp_set_model_properties(psmouse, model_info, use_ps2pp);
 }

 return use_ps2pp ? 0 : -ENXIO;
}

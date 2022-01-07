
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; struct fsp_data* private; } ;
struct fsp_data {scalar_t__ ver; int buttons; int flags; } ;


 int EIO ;
 int FSPDRV_FLAG_EN_OPC ;
 int FSP_BIT_EN_AUTO_MSID8 ;
 int FSP_BIT_EN_MSID6 ;
 int FSP_BIT_EN_MSID7 ;
 int FSP_BIT_EN_MSID8 ;
 int FSP_BIT_EN_PKT_G0 ;
 int FSP_BIT_SWC1_EN_ABS_1F ;
 int FSP_BIT_SWC1_EN_ABS_2F ;
 int FSP_BIT_SWC1_EN_ABS_CON ;
 int FSP_BIT_SWC1_EN_FUP_OUT ;
 int FSP_REG_SWC1 ;
 int FSP_REG_SYSCTL5 ;
 scalar_t__ FSP_VER_STL3888_C0 ;
 int PSMOUSE_CMD_GETID ;
 int PSMOUSE_CMD_SETRATE ;
 scalar_t__ fsp_get_buttons (struct psmouse*,int*) ;
 int fsp_onpad_hscr (struct psmouse*,int) ;
 int fsp_onpad_vscr (struct psmouse*,int) ;
 scalar_t__ fsp_opc_tag_enable (struct psmouse*,int) ;
 scalar_t__ fsp_reg_read (struct psmouse*,int ,int*) ;
 scalar_t__ fsp_reg_write (struct psmouse*,int ,int) ;
 int ps2_command (struct ps2dev*,unsigned char*,int ) ;
 int psmouse_err (struct psmouse*,char*) ;
 int psmouse_warn (struct psmouse*,char*) ;

__attribute__((used)) static int fsp_activate_protocol(struct psmouse *psmouse)
{
 struct fsp_data *pad = psmouse->private;
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char param[2];
 int val;





 param[0] = 200;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 param[0] = 200;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);
 param[0] = 80;
 ps2_command(ps2dev, param, PSMOUSE_CMD_SETRATE);

 ps2_command(ps2dev, param, PSMOUSE_CMD_GETID);
 if (param[0] != 0x04) {
  psmouse_err(psmouse,
       "Unable to enable 4 bytes packet format.\n");
  return -EIO;
 }

 if (pad->ver < FSP_VER_STL3888_C0) {

  if (fsp_reg_read(psmouse, FSP_REG_SYSCTL5, &val)) {
   psmouse_err(psmouse,
        "Unable to read SYSCTL5 register.\n");
   return -EIO;
  }

  if (fsp_get_buttons(psmouse, &pad->buttons)) {
   psmouse_err(psmouse,
        "Unable to retrieve number of buttons.\n");
   return -EIO;
  }

  val &= ~(FSP_BIT_EN_MSID7 | FSP_BIT_EN_MSID8 | FSP_BIT_EN_AUTO_MSID8);

  val &= ~FSP_BIT_EN_PKT_G0;
  if (pad->buttons == 0x06) {

   val |= FSP_BIT_EN_MSID6;
  }

  if (fsp_reg_write(psmouse, FSP_REG_SYSCTL5, val)) {
   psmouse_err(psmouse,
        "Unable to set up required mode bits.\n");
   return -EIO;
  }





  if (fsp_opc_tag_enable(psmouse, 1))
   psmouse_warn(psmouse,
         "Failed to enable OPC tag mode.\n");

  pad->flags |= FSPDRV_FLAG_EN_OPC;


  fsp_onpad_vscr(psmouse, 1);
  fsp_onpad_hscr(psmouse, 1);
 } else {

  if (fsp_reg_write(psmouse, FSP_REG_SWC1,
      FSP_BIT_SWC1_EN_ABS_1F |
      FSP_BIT_SWC1_EN_ABS_2F |
      FSP_BIT_SWC1_EN_FUP_OUT |
      FSP_BIT_SWC1_EN_ABS_CON)) {
   psmouse_err(psmouse,
        "Unable to enable absolute coordinates output.\n");
   return -EIO;
  }
 }

 return 0;
}

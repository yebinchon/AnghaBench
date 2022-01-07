
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int FSP_CMD_TIMEOUT ;
 int FSP_CMD_TIMEOUT2 ;
 unsigned char fsp_test_invert_cmd (int) ;
 unsigned char fsp_test_swap_cmd (int) ;
 int ps2_begin_command (struct ps2dev*) ;
 int ps2_end_command (struct ps2dev*) ;
 scalar_t__ ps2_sendbyte (struct ps2dev*,unsigned char,int ) ;
 int psmouse_dbg (struct psmouse*,char*,int,int) ;

__attribute__((used)) static int fsp_page_reg_write(struct psmouse *psmouse, int reg_val)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 unsigned char v;
 int rc = -1;

 ps2_begin_command(ps2dev);

 if (ps2_sendbyte(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
  goto out;

 ps2_sendbyte(ps2dev, 0x38, FSP_CMD_TIMEOUT2);
 ps2_sendbyte(ps2dev, 0x88, FSP_CMD_TIMEOUT2);

 if (ps2_sendbyte(ps2dev, 0xf3, FSP_CMD_TIMEOUT) < 0)
  goto out;

 if ((v = fsp_test_invert_cmd(reg_val)) != reg_val) {
  ps2_sendbyte(ps2dev, 0x47, FSP_CMD_TIMEOUT2);
 } else if ((v = fsp_test_swap_cmd(reg_val)) != reg_val) {

  ps2_sendbyte(ps2dev, 0x44, FSP_CMD_TIMEOUT2);
 } else {

  ps2_sendbyte(ps2dev, 0x33, FSP_CMD_TIMEOUT2);
 }

 ps2_sendbyte(ps2dev, v, FSP_CMD_TIMEOUT2);
 rc = 0;

 out:
 ps2_end_command(ps2dev);
 psmouse_dbg(psmouse,
      "WRITE PAGE REG: to 0x%02x (rc = %d)\n",
      reg_val, rc);
 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int dummy; } ;


 int CYTP_PS2_CMD_TRIES ;
 int DECODE_CMD_AA (unsigned char) ;
 int DECODE_CMD_BB (unsigned char) ;
 int DECODE_CMD_CC (unsigned char) ;
 int DECODE_CMD_DD (unsigned char) ;
 int EIO ;
 int PSMOUSE_CMD_SETRES ;
 int cypress_ps2_ext_cmd (struct psmouse*,int ,int ) ;
 int cypress_ps2_read_cmd_status (struct psmouse*,unsigned char,unsigned char*) ;
 scalar_t__ cypress_verify_cmd_state (struct psmouse*,unsigned char,unsigned char*) ;
 int psmouse_dbg (struct psmouse*,char*,unsigned char,int ,int ,int ,int ) ;

__attribute__((used)) static int cypress_send_ext_cmd(struct psmouse *psmouse, unsigned char cmd,
    unsigned char *param)
{
 int tries = CYTP_PS2_CMD_TRIES;
 int rc;

 psmouse_dbg(psmouse, "send extension cmd 0x%02x, [%d %d %d %d]\n",
   cmd, DECODE_CMD_AA(cmd), DECODE_CMD_BB(cmd),
   DECODE_CMD_CC(cmd), DECODE_CMD_DD(cmd));

 do {
  cypress_ps2_ext_cmd(psmouse,
        PSMOUSE_CMD_SETRES, DECODE_CMD_DD(cmd));
  cypress_ps2_ext_cmd(psmouse,
        PSMOUSE_CMD_SETRES, DECODE_CMD_CC(cmd));
  cypress_ps2_ext_cmd(psmouse,
        PSMOUSE_CMD_SETRES, DECODE_CMD_BB(cmd));
  cypress_ps2_ext_cmd(psmouse,
        PSMOUSE_CMD_SETRES, DECODE_CMD_AA(cmd));

  rc = cypress_ps2_read_cmd_status(psmouse, cmd, param);
  if (rc)
   continue;

  if (cypress_verify_cmd_state(psmouse, cmd, param))
   return 0;

 } while (--tries > 0);

 return -EIO;
}

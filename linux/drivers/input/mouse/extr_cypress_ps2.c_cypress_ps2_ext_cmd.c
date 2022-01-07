
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {int dummy; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int CYTP_PS2_CMD_TRIES ;
 int CYTP_PS2_ERROR ;
 int CYTP_PS2_RETRY ;
 int cypress_ps2_sendbyte (struct psmouse*,unsigned char) ;
 int ps2_begin_command (struct ps2dev*) ;
 int ps2_end_command (struct ps2dev*) ;

__attribute__((used)) static int cypress_ps2_ext_cmd(struct psmouse *psmouse, unsigned short cmd,
          unsigned char data)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;
 int tries = CYTP_PS2_CMD_TRIES;
 int rc;

 ps2_begin_command(ps2dev);

 do {





  rc = cypress_ps2_sendbyte(psmouse, cmd & 0xff);
  if (rc == CYTP_PS2_RETRY) {
   rc = cypress_ps2_sendbyte(psmouse, 0x00);
   if (rc == CYTP_PS2_RETRY)
    rc = cypress_ps2_sendbyte(psmouse, 0x0a);
  }
  if (rc == CYTP_PS2_ERROR)
   continue;

  rc = cypress_ps2_sendbyte(psmouse, data);
  if (rc == CYTP_PS2_RETRY)
   rc = cypress_ps2_sendbyte(psmouse, data);
  if (rc == CYTP_PS2_ERROR)
   continue;
  else
   break;
 } while (--tries > 0);

 ps2_end_command(ps2dev);

 return rc;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps2dev {scalar_t__ nak; } ;
struct psmouse {struct ps2dev ps2dev; } ;


 int CYTP_CMD_TIMEOUT ;
 int CYTP_PS2_ERROR ;
 scalar_t__ CYTP_PS2_RETRY ;
 scalar_t__ ps2_sendbyte (struct ps2dev*,int,int ) ;
 int psmouse_dbg (struct psmouse*,char*,int,...) ;

__attribute__((used)) static int cypress_ps2_sendbyte(struct psmouse *psmouse, int value)
{
 struct ps2dev *ps2dev = &psmouse->ps2dev;

 if (ps2_sendbyte(ps2dev, value & 0xff, CYTP_CMD_TIMEOUT) < 0) {
  psmouse_dbg(psmouse,
    "sending command 0x%02x failed, resp 0x%02x\n",
    value & 0xff, ps2dev->nak);
  if (ps2dev->nak == CYTP_PS2_RETRY)
   return CYTP_PS2_RETRY;
  else
   return CYTP_PS2_ERROR;
 }






 return 0;
}

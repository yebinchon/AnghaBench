
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktsize; int badbyte; int packet; int ps2dev; struct alps_data* private; } ;
struct alps_data {int flags; unsigned char mask0; unsigned char byte0; } ;
typedef int buf ;


 int ALPS_PASS ;
 int PSMOUSE_CMD_POLL ;
 int alps_passthrough_mode_v2 (struct psmouse*,int) ;
 int memcpy (int ,unsigned char*,int) ;
 scalar_t__ ps2_command (int *,unsigned char*,int) ;

__attribute__((used)) static int alps_poll(struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 unsigned char buf[sizeof(psmouse->packet)];
 bool poll_failed;

 if (priv->flags & ALPS_PASS)
  alps_passthrough_mode_v2(psmouse, 1);

 poll_failed = ps2_command(&psmouse->ps2dev, buf,
      PSMOUSE_CMD_POLL | (psmouse->pktsize << 8)) < 0;

 if (priv->flags & ALPS_PASS)
  alps_passthrough_mode_v2(psmouse, 0);

 if (poll_failed || (buf[0] & priv->mask0) != priv->byte0)
  return -1;

 if ((psmouse->badbyte & 0xc8) == 0x08) {



  if (ps2_command(&psmouse->ps2dev, buf, PSMOUSE_CMD_POLL | (3 << 8)))
   return -1;
 }

 memcpy(psmouse->packet, buf, sizeof(buf));
 return 0;
}

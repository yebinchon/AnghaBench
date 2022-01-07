
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct psmouse {int pktcnt; int packet; struct hgpk_data* private; } ;
struct hgpk_data {int mode; } ;


 unsigned char HGPK_GS ;



 unsigned char HGPK_PT ;
 int psmouse_dbg (struct psmouse*,char*,int,int,int,int ) ;

__attribute__((used)) static bool hgpk_is_byte_valid(struct psmouse *psmouse, unsigned char *packet)
{
 struct hgpk_data *priv = psmouse->private;
 int pktcnt = psmouse->pktcnt;
 bool valid;

 switch (priv->mode) {
 case 129:
  valid = (packet[0] & 0x0C) == 0x08;
  break;

 case 130:
  valid = pktcnt == 1 ?
   packet[0] == HGPK_GS : !(packet[pktcnt - 1] & 0x80);
  break;

 case 128:
  valid = pktcnt == 1 ?
   packet[0] == HGPK_PT : !(packet[pktcnt - 1] & 0x80);
  break;

 default:
  valid = 0;
  break;
 }

 if (!valid)
  psmouse_dbg(psmouse,
       "bad data, mode %d (%d) %*ph\n",
       priv->mode, pktcnt, 6, psmouse->packet);

 return valid;
}

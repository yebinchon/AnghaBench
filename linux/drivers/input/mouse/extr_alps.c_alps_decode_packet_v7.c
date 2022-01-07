
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct psmouse {struct alps_data* private; } ;
struct alps_fields {int fingers; unsigned char left; unsigned char right; unsigned char middle; TYPE_1__* mt; } ;
struct alps_data {int flags; } ;
struct TYPE_3__ {scalar_t__ x; scalar_t__ y; } ;


 int ALPS_BUTTONPAD ;
 unsigned char V7_PACKET_ID_IDLE ;
 unsigned char V7_PACKET_ID_NEW ;
 unsigned char V7_PACKET_ID_TWO ;
 unsigned char V7_PACKET_ID_UNKNOWN ;
 int alps_get_finger_coordinate_v7 (TYPE_1__*,unsigned char*,unsigned char) ;
 int alps_get_mt_count (TYPE_1__*) ;
 unsigned char alps_get_packet_id_v7 (unsigned char*) ;

__attribute__((used)) static int alps_decode_packet_v7(struct alps_fields *f,
      unsigned char *p,
      struct psmouse *psmouse)
{
 struct alps_data *priv = psmouse->private;
 unsigned char pkt_id;

 pkt_id = alps_get_packet_id_v7(p);
 if (pkt_id == V7_PACKET_ID_IDLE)
  return 0;
 if (pkt_id == V7_PACKET_ID_UNKNOWN)
  return -1;
 if (pkt_id == V7_PACKET_ID_NEW)
  return 1;

 alps_get_finger_coordinate_v7(f->mt, p, pkt_id);

 if (pkt_id == V7_PACKET_ID_TWO)
  f->fingers = alps_get_mt_count(f->mt);
 else
  f->fingers = 3 + (p[5] & 0x03);

 f->left = (p[0] & 0x80) >> 7;
 if (priv->flags & ALPS_BUTTONPAD) {
  if (p[0] & 0x20)
   f->fingers++;
  if (p[0] & 0x10)
   f->fingers++;
 } else {
  f->right = (p[0] & 0x20) >> 5;
  f->middle = (p[0] & 0x10) >> 4;
 }


 if (f->fingers == 1 && f->mt[0].x == 0 && f->mt[0].y == 0) {
  f->mt[0].x = f->mt[1].x;
  f->mt[0].y = f->mt[1].y;
  f->mt[1].x = 0;
  f->mt[1].y = 0;
 }

 return 0;
}

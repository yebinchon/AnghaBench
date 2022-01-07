
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_mt_pos {unsigned char x; unsigned char y; } ;






__attribute__((used)) static void alps_get_finger_coordinate_v7(struct input_mt_pos *mt,
       unsigned char *pkt,
       unsigned char pkt_id)
{
 mt[0].x = ((pkt[2] & 0x80) << 4);
 mt[0].x |= ((pkt[2] & 0x3F) << 5);
 mt[0].x |= ((pkt[3] & 0x30) >> 1);
 mt[0].x |= (pkt[3] & 0x07);
 mt[0].y = (pkt[1] << 3) | (pkt[0] & 0x07);

 mt[1].x = ((pkt[3] & 0x80) << 4);
 mt[1].x |= ((pkt[4] & 0x80) << 3);
 mt[1].x |= ((pkt[4] & 0x3F) << 4);
 mt[1].y = ((pkt[5] & 0x80) << 3);
 mt[1].y |= ((pkt[5] & 0x3F) << 4);

 switch (pkt_id) {
 case 128:
  mt[1].x &= ~0x000F;
  mt[1].y |= 0x000F;

  if (mt[1].y == 0x7ff && mt[1].x == 0xff0) {
   mt[1].x = 0;

  }
  break;

 case 130:
  mt[1].x &= ~0x003F;
  mt[1].y &= ~0x0020;
  mt[1].y |= ((pkt[4] & 0x02) << 4);
  mt[1].y |= 0x001F;
  break;

 case 129:
  mt[1].x &= ~0x003F;
  mt[1].x |= (pkt[0] & 0x20);
  mt[1].y |= 0x000F;
  break;
 }

 mt[0].y = 0x7FF - mt[0].y;
 mt[1].y = 0x7FF - mt[1].y;
}

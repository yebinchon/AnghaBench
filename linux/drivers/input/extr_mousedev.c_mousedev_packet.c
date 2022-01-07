
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mousedev_motion {int buttons; scalar_t__ dz; scalar_t__ dy; scalar_t__ dx; } ;
struct mousedev_client {size_t tail; int mode; int bufsiz; size_t head; int last_buttons; scalar_t__ ready; struct mousedev_motion* packets; } ;
typedef int s8 ;


 int BIT (int) ;



 int PACKET_QUEUE_LEN ;
 int clamp_val (scalar_t__,int,int) ;

__attribute__((used)) static void mousedev_packet(struct mousedev_client *client, u8 *ps2_data)
{
 struct mousedev_motion *p = &client->packets[client->tail];
 s8 dx, dy, dz;

 dx = clamp_val(p->dx, -127, 127);
 p->dx -= dx;

 dy = clamp_val(p->dy, -127, 127);
 p->dy -= dy;

 ps2_data[0] = BIT(3);
 ps2_data[0] |= ((dx & BIT(7)) >> 3) | ((dy & BIT(7)) >> 2);
 ps2_data[0] |= p->buttons & 0x07;
 ps2_data[1] = dx;
 ps2_data[2] = dy;

 switch (client->mode) {
 case 130:
  dz = clamp_val(p->dz, -7, 7);
  p->dz -= dz;

  ps2_data[3] = (dz & 0x0f) | ((p->buttons & 0x18) << 1);
  client->bufsiz = 4;
  break;

 case 129:
  dz = clamp_val(p->dz, -127, 127);
  p->dz -= dz;

  ps2_data[0] |= ((p->buttons & 0x10) >> 3) |
          ((p->buttons & 0x08) >> 1);
  ps2_data[3] = dz;

  client->bufsiz = 4;
  break;

 case 128:
 default:
  p->dz = 0;

  ps2_data[0] |= ((p->buttons & 0x10) >> 3) |
          ((p->buttons & 0x08) >> 1);

  client->bufsiz = 3;
  break;
 }

 if (!p->dx && !p->dy && !p->dz) {
  if (client->tail == client->head) {
   client->ready = 0;
   client->last_buttons = p->buttons;
  } else
   client->tail = (client->tail + 1) % PACKET_QUEUE_LEN;
 }
}

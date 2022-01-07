
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct serio_driver {int (* interrupt ) (struct serio*,scalar_t__,int ) ;} ;
struct serio {struct serio_driver* drv; struct hil_mlc_serio_map* port_data; } ;
struct hil_mlc_serio_map {size_t didx; struct hil_mlc* mlc; } ;
struct hil_mlc {int* serio_opacket; int* serio_oidx; TYPE_1__* di; } ;
typedef int hil_packet ;
struct TYPE_2__ {scalar_t__* rnm; scalar_t__* exd; scalar_t__* rsc; scalar_t__* idd; } ;


 int BUG_ON (int ) ;
 int EIO ;




 int HIL_ERR_INT ;
 int HIL_PKT_CMD ;
 int HIL_PKT_DATA_MASK ;
 int stub1 (struct serio*,int,int ) ;
 int stub2 (struct serio*,int,int ) ;
 int stub3 (struct serio*,int,int ) ;
 int stub4 (struct serio*,scalar_t__,int ) ;
 int stub5 (struct serio*,scalar_t__,int ) ;
 int stub6 (struct serio*,int,int ) ;
 int stub7 (struct serio*,int,int ) ;
 int stub8 (struct serio*,scalar_t__,int ) ;

__attribute__((used)) static int hil_mlc_serio_write(struct serio *serio, unsigned char c)
{
 struct hil_mlc_serio_map *map;
 struct hil_mlc *mlc;
 struct serio_driver *drv;
 uint8_t *idx, *last;

 map = serio->port_data;
 BUG_ON(map == ((void*)0));

 mlc = map->mlc;
 BUG_ON(mlc == ((void*)0));

 mlc->serio_opacket[map->didx] |=
  ((hil_packet)c) << (8 * (3 - mlc->serio_oidx[map->didx]));

 if (mlc->serio_oidx[map->didx] >= 3) {

  if (!(mlc->serio_opacket[map->didx] & HIL_PKT_CMD))
   return -EIO;
  switch (mlc->serio_opacket[map->didx] & HIL_PKT_DATA_MASK) {
  case 130:
   idx = mlc->di[map->didx].idd;
   goto emu;
  case 128:
   idx = mlc->di[map->didx].rsc;
   goto emu;
  case 131:
   idx = mlc->di[map->didx].exd;
   goto emu;
  case 129:
   idx = mlc->di[map->didx].rnm;
   goto emu;
  default:
   break;
  }
  mlc->serio_oidx[map->didx] = 0;
  mlc->serio_opacket[map->didx] = 0;
 }

 mlc->serio_oidx[map->didx]++;
 return -EIO;
 emu:
 drv = serio->drv;
 BUG_ON(drv == ((void*)0));

 last = idx + 15;
 while ((last != idx) && (*last == 0))
  last--;

 while (idx != last) {
  drv->interrupt(serio, 0, 0);
  drv->interrupt(serio, HIL_ERR_INT >> 16, 0);
  drv->interrupt(serio, 0, 0);
  drv->interrupt(serio, *idx, 0);
  idx++;
 }
 drv->interrupt(serio, 0, 0);
 drv->interrupt(serio, HIL_ERR_INT >> 16, 0);
 drv->interrupt(serio, HIL_PKT_CMD >> 8, 0);
 drv->interrupt(serio, *idx, 0);

 mlc->serio_oidx[map->didx] = 0;
 mlc->serio_opacket[map->didx] = 0;

 return 0;
}

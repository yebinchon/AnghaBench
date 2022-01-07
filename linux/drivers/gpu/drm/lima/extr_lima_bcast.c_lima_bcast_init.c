
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lima_ip {TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ip; } ;
struct TYPE_3__ {scalar_t__ present; } ;


 int LIMA_BCAST_BROADCAST_MASK ;
 int LIMA_BCAST_INTERRUPT_MASK ;
 int bcast_write (int ,int) ;
 int lima_ip_pp0 ;
 int lima_ip_pp7 ;

int lima_bcast_init(struct lima_ip *ip)
{
 int i, mask = 0;

 for (i = lima_ip_pp0; i <= lima_ip_pp7; i++) {
  if (ip->dev->ip[i].present)
   mask |= 1 << (i - lima_ip_pp0);
 }

 bcast_write(LIMA_BCAST_BROADCAST_MASK, mask << 16);
 bcast_write(LIMA_BCAST_INTERRUPT_MASK, mask);
 return 0;
}

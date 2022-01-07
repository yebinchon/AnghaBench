
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
struct bcm3510_state {int dummy; } ;
struct TYPE_7__ {int HABR; int LDHABR; } ;
struct TYPE_6__ {scalar_t__ HABADR; } ;
struct TYPE_8__ {TYPE_2__ HABSTAT_a8; scalar_t__ raw; int HABDATA_a7; TYPE_1__ HABADR_a6; } ;
typedef TYPE_3__ bcm3510_register_value ;


 int ETIMEDOUT ;
 int HZ ;
 int bcm3510_readB (struct bcm3510_state*,int,TYPE_3__*) ;
 int bcm3510_writeB (struct bcm3510_state*,int,TYPE_3__) ;
 int deb_info (char*) ;
 int jiffies ;
 int msleep (int) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int bcm3510_hab_send_request(struct bcm3510_state *st, u8 *buf, int len)
{
 bcm3510_register_value v,hab;
 int ret,i;
 unsigned long t;



 if ((ret = bcm3510_readB(st,0xa8,&v)) < 0)
  return ret;
 if (v.HABSTAT_a8.HABR) {
  deb_info("HAB is running already - clearing it.\n");
  v.HABSTAT_a8.HABR = 0;
  bcm3510_writeB(st,0xa8,v);

 }



 hab.HABADR_a6.HABADR = 0;
 if ((ret = bcm3510_writeB(st,0xa6,hab)) < 0)
  return ret;

 for (i = 0; i < len; i++) {
  hab.HABDATA_a7 = buf[i];
  if ((ret = bcm3510_writeB(st,0xa7,hab)) < 0)
   return ret;
 }



 v.raw = 0; v.HABSTAT_a8.HABR = 1; v.HABSTAT_a8.LDHABR = 1;
 if ((ret = bcm3510_writeB(st,0xa8,v)) < 0)
  return ret;


 t = jiffies + 1*HZ;
 while (time_before(jiffies, t)) {
  deb_info("waiting for HAB to complete\n");
  msleep(10);
  if ((ret = bcm3510_readB(st,0xa8,&v)) < 0)
   return ret;

  if (!v.HABSTAT_a8.HABR)
   return 0;
 }

 deb_info("send_request execution timed out.\n");
 return -ETIMEDOUT;
}

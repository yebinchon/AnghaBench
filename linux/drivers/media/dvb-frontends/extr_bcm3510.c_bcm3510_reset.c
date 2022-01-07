
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bcm3510_state {int dummy; } ;
struct TYPE_6__ {scalar_t__ RESET; } ;
struct TYPE_7__ {int RESET; } ;
struct TYPE_8__ {TYPE_1__ APSTAT1_a2; TYPE_2__ HCTL1_a0; } ;
typedef TYPE_3__ bcm3510_register_value ;


 int ETIMEDOUT ;
 int HZ ;
 int bcm3510_readB (struct bcm3510_state*,int,TYPE_3__*) ;
 int bcm3510_writeB (struct bcm3510_state*,int,TYPE_3__) ;
 int deb_info (char*) ;
 int jiffies ;
 int msleep (int) ;
 scalar_t__ time_before (int,unsigned long) ;

__attribute__((used)) static int bcm3510_reset(struct bcm3510_state *st)
{
 int ret;
 unsigned long t;
 bcm3510_register_value v;

 bcm3510_readB(st,0xa0,&v); v.HCTL1_a0.RESET = 1;
 if ((ret = bcm3510_writeB(st,0xa0,v)) < 0)
  return ret;

 t = jiffies + 3*HZ;
 while (time_before(jiffies, t)) {
  msleep(10);
  if ((ret = bcm3510_readB(st,0xa2,&v)) < 0)
   return ret;

  if (v.APSTAT1_a2.RESET)
   return 0;
 }
 deb_info("reset timed out\n");
 return -ETIMEDOUT;
}

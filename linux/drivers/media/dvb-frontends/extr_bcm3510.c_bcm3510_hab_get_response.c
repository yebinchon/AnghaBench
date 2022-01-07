
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct bcm3510_state {int dummy; } ;
struct TYPE_5__ {scalar_t__ HABADR; } ;
struct TYPE_6__ {int HABDATA_a7; TYPE_1__ HABADR_a6; } ;
typedef TYPE_2__ bcm3510_register_value ;


 int bcm3510_readB (struct bcm3510_state*,int,TYPE_2__*) ;
 int bcm3510_writeB (struct bcm3510_state*,int,TYPE_2__) ;

__attribute__((used)) static int bcm3510_hab_get_response(struct bcm3510_state *st, u8 *buf, int len)
{
 bcm3510_register_value v;
 int ret,i;

 v.HABADR_a6.HABADR = 0;
 if ((ret = bcm3510_writeB(st,0xa6,v)) < 0)
  return ret;

 for (i = 0; i < len; i++) {
  if ((ret = bcm3510_readB(st,0xa7,&v)) < 0)
   return ret;
  buf[i] = v.HABDATA_a7;
 }
 return 0;
}

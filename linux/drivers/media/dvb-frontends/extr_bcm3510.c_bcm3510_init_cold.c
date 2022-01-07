
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bcm3510_state {int frontend; } ;
struct TYPE_6__ {scalar_t__ CTL; } ;
struct TYPE_7__ {scalar_t__ RUN; } ;
struct TYPE_8__ {TYPE_1__ TSTCTL_2e; TYPE_2__ APSTAT1_a2; } ;
typedef TYPE_3__ bcm3510_register_value ;


 int bcm3510_clear_reset (struct bcm3510_state*) ;
 int bcm3510_download_firmware (int *) ;
 int bcm3510_readB (struct bcm3510_state*,int,TYPE_3__*) ;
 int bcm3510_reset (struct bcm3510_state*) ;
 int bcm3510_writeB (struct bcm3510_state*,int,TYPE_3__) ;
 int deb_info (char*) ;

__attribute__((used)) static int bcm3510_init_cold(struct bcm3510_state *st)
{
 int ret;
 bcm3510_register_value v;


 if ((ret = bcm3510_readB(st,0xa2,&v)) < 0)
  return ret;
 if (v.APSTAT1_a2.RUN) {
  deb_info("AP is already running - firmware already loaded.\n");
  return 0;
 }

 deb_info("reset?\n");
 if ((ret = bcm3510_reset(st)) < 0)
  return ret;

 deb_info("tristate?\n");

 v.TSTCTL_2e.CTL = 0;
 if ((ret = bcm3510_writeB(st,0x2e,v)) < 0)
  return ret;

 deb_info("firmware?\n");
 if ((ret = bcm3510_download_firmware(&st->frontend)) < 0 ||
  (ret = bcm3510_clear_reset(st)) < 0)
  return ret;



 return 0;
}

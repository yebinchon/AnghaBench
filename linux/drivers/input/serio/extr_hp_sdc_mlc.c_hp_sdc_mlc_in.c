
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int suseconds_t ;
struct hp_sdc_mlc_priv_s {scalar_t__ emtestmode; } ;
struct TYPE_3__ {int* ipacket; int opacket; int icount; int isem; scalar_t__ intimeout; scalar_t__ instart; struct hp_sdc_mlc_priv_s* priv; } ;
typedef TYPE_1__ hil_mlc ;


 int HIL_ERR_INT ;
 int HIL_PKT_ADDR_MASK ;
 int HIL_PKT_CMD ;
 int HIL_PKT_DATA_MASK ;
 scalar_t__ down_trylock (int *) ;
 int jiffies ;
 scalar_t__ time_after (int ,scalar_t__) ;
 int up (int *) ;

__attribute__((used)) static int hp_sdc_mlc_in(hil_mlc *mlc, suseconds_t timeout)
{
 struct hp_sdc_mlc_priv_s *priv;
 int rc = 2;

 priv = mlc->priv;


 if (down_trylock(&mlc->isem)) {
  if (priv->emtestmode) {
   mlc->ipacket[0] =
    HIL_ERR_INT | (mlc->opacket &
            (HIL_PKT_CMD |
      HIL_PKT_ADDR_MASK |
      HIL_PKT_DATA_MASK));
   mlc->icount = 14;

   goto wasup;
  }
  if (time_after(jiffies, mlc->instart + mlc->intimeout)) {




   rc = 1;
   up(&mlc->isem);
  }
  goto done;
 }
 wasup:
 up(&mlc->isem);
 rc = 0;
 done:
 return rc;
}

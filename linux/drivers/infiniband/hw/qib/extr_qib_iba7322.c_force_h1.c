
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qib_pportdata {TYPE_1__* cpspec; TYPE_3__* dd; } ;
struct TYPE_6__ {TYPE_2__* cspec; } ;
struct TYPE_5__ {int r1; } ;
struct TYPE_4__ {int h1_val; scalar_t__ qdr_reforce; } ;


 int SERDES_CHANS ;
 int clock_man (struct qib_pportdata*,int) ;
 int set_man_code (struct qib_pportdata*,int,int ) ;
 int set_man_mode_h1 (struct qib_pportdata*,int,int,int ) ;

__attribute__((used)) static void force_h1(struct qib_pportdata *ppd)
{
 int chan;

 ppd->cpspec->qdr_reforce = 0;
 if (!ppd->dd->cspec->r1)
  return;

 for (chan = 0; chan < SERDES_CHANS; chan++) {
  set_man_mode_h1(ppd, chan, 1, 0);
  set_man_code(ppd, chan, ppd->cpspec->h1_val);
  clock_man(ppd, chan);
  set_man_mode_h1(ppd, chan, 0, 0);
 }
}

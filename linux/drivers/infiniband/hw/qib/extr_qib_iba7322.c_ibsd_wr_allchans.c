
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int hw_pidx; struct qib_devdata* dd; } ;
struct qib_devdata {int dummy; } ;


 int IBSD (int ) ;
 int SERDES_CHANS ;
 int ahb_mod (struct qib_devdata*,int ,int,int,unsigned int,unsigned int) ;

__attribute__((used)) static void ibsd_wr_allchans(struct qib_pportdata *ppd, int addr, unsigned data,
        unsigned mask)
{
 struct qib_devdata *dd = ppd->dd;
 int chan;

 for (chan = 0; chan < SERDES_CHANS; ++chan) {
  ahb_mod(dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)), addr,
   data, mask);
  ahb_mod(dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)), addr,
   0, 0);
 }
}

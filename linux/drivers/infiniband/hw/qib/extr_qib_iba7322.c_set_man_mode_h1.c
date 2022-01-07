
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qib_pportdata {int hw_pidx; int dd; } ;


 int IBSD (int ) ;
 int ahb_mod (int ,int ,int,int,int,int) ;

__attribute__((used)) static void set_man_mode_h1(struct qib_pportdata *ppd, int chan,
 int enable, u32 tapenable)
{
 if (enable)
  ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)),
   1, 3 << 10, 0x1f << 10);
 else
  ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), (chan + (chan >> 1)),
   1, 0, 0x1f << 10);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct qib_pportdata {TYPE_1__* cpspec; TYPE_3__* dd; int hw_pidx; } ;
struct TYPE_7__ {TYPE_2__* cspec; } ;
struct TYPE_6__ {scalar_t__ r1; } ;
struct TYPE_5__ {int qdr_dfe_on; } ;


 int BMASK (int,int) ;
 int IBSD (int ) ;
 int IBSD_TX_DEEMPHASIS_OVERRIDE_0 ;
 scalar_t__ IS_QME (TYPE_3__*) ;
 int LE2_DEFAULT ;
 int LE2_QME ;
 unsigned long long QDR_STATIC_ADAPT_DOWN ;
 unsigned long long QDR_STATIC_ADAPT_DOWN_R1 ;
 int SERDES_CHANS ;
 unsigned long long SYM_MASK (int ,int ) ;
 int ahb_mod (TYPE_3__*,int ,int,int,int,int) ;
 int ibsd_wr_allchans (struct qib_pportdata*,int,int,int) ;
 int init_txdds_table (struct qib_pportdata*,int ) ;
 unsigned long jiffies ;
 int krp_static_adapt_dis (int) ;
 int krp_tx_deemph_override ;
 unsigned long msecs_to_jiffies (int) ;
 int msleep (int) ;
 int pr_info (char*,int ,int) ;
 int qib_write_kreg_port (struct qib_pportdata*,int ,unsigned long long) ;
 int reset_tx_deemphasis_override ;
 int serdes_7322_los_enable (struct qib_pportdata*,int) ;
 int time_is_before_jiffies (unsigned long) ;

__attribute__((used)) static int serdes_7322_init_new(struct qib_pportdata *ppd)
{
 unsigned long tend;
 u32 le_val, rxcaldone;
 int chan, chan_done = (1 << SERDES_CHANS) - 1;


 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 10, 0 << 14, 1 << 14);


 qib_write_kreg_port(ppd, krp_tx_deemph_override,
  SYM_MASK(IBSD_TX_DEEMPHASIS_OVERRIDE_0,
  reset_tx_deemphasis_override));




 ibsd_wr_allchans(ppd, 1, 0, BMASK(9, 1));

 ibsd_wr_allchans(ppd, 13, 0, BMASK(5, 5));

 ibsd_wr_allchans(ppd, 1, 0, BMASK(15, 15));

 ibsd_wr_allchans(ppd, 13, 0, BMASK(6, 6));

 ibsd_wr_allchans(ppd, 5, 0, BMASK(0, 0));

 ibsd_wr_allchans(ppd, 12, 0, BMASK(12, 12));

 ibsd_wr_allchans(ppd, 2, 0, BMASK(3, 3));

 ibsd_wr_allchans(ppd, 2, 0, BMASK(4, 4));

 ibsd_wr_allchans(ppd, 13, 0, BMASK(13, 13));

 ibsd_wr_allchans(ppd, 4, 0, BMASK(10, 10));

 ibsd_wr_allchans(ppd, 12, 0, BMASK(4, 4));

 ibsd_wr_allchans(ppd, 2, (1 << 15), BMASK(15, 15));

 ibsd_wr_allchans(ppd, 5, 0, BMASK(9, 8));

 ibsd_wr_allchans(ppd, 12, (1 << 5), BMASK(5, 5));

 ibsd_wr_allchans(ppd, 2, (4 << 12), BMASK(14, 12));

 ibsd_wr_allchans(ppd, 16, 0, BMASK(1, 0));

 if (!ppd->dd->cspec->r1) {
  ibsd_wr_allchans(ppd, 12, 1 << 12, BMASK(12, 12));
  ibsd_wr_allchans(ppd, 12, 2 << 8, BMASK(11, 8));
 } else {
  ibsd_wr_allchans(ppd, 19, (3 << 11), BMASK(13, 11));
 }
 ibsd_wr_allchans(ppd, 0, 0, BMASK(15, 13));
 msleep(20);

 ibsd_wr_allchans(ppd, 0, (1 << 14), BMASK(14, 14));
 msleep(20);

 ibsd_wr_allchans(ppd, 0, (1 << 13), BMASK(13, 13));
 msleep(20);



 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 5, 8 << 11, BMASK(14, 11));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 7, 8 << 4, BMASK(7, 4));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 8, 8 << 11, BMASK(14, 11));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 10, 8 << 4, BMASK(7, 4));


 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 6, 4 << 0, BMASK(3, 0));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 7, 4 << 8, BMASK(11, 8));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 9, 4 << 0, BMASK(3, 0));
 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 10, 4 << 8, BMASK(11, 8));


 ahb_mod(ppd->dd, IBSD(ppd->hw_pidx), 5, 9, 1 << 15, 1 << 15);


 ibsd_wr_allchans(ppd, 14, (1 << 3), BMASK(5, 3));
 ibsd_wr_allchans(ppd, 20, (2 << 10), BMASK(12, 10));
 ibsd_wr_allchans(ppd, 20, (4 << 13), BMASK(15, 13));


 serdes_7322_los_enable(ppd, 1);

 ibsd_wr_allchans(ppd, 38, 0 << 10, 1 << 10);



 ibsd_wr_allchans(ppd, 15, 1, BMASK(0, 0));

 ibsd_wr_allchans(ppd, 12, (1 << 4), BMASK(4, 4));
 msleep(20);

 ibsd_wr_allchans(ppd, 4, (1 << 10), BMASK(10, 10));
 tend = jiffies + msecs_to_jiffies(500);
 while (chan_done && !time_is_before_jiffies(tend)) {
  msleep(20);
  for (chan = 0; chan < SERDES_CHANS; ++chan) {
   rxcaldone = ahb_mod(ppd->dd, IBSD(ppd->hw_pidx),
         (chan + (chan >> 1)),
         25, 0, 0);
   if ((~rxcaldone & (u32)BMASK(9, 9)) == 0 &&
       (~chan_done & (1 << chan)) == 0)
    chan_done &= ~(1 << chan);
  }
 }
 if (chan_done) {
  pr_info("Serdes %d calibration not done after .5 sec: 0x%x\n",
    IBSD(ppd->hw_pidx), chan_done);
 } else {
  for (chan = 0; chan < SERDES_CHANS; ++chan) {
   rxcaldone = ahb_mod(ppd->dd, IBSD(ppd->hw_pidx),
         (chan + (chan >> 1)),
         25, 0, 0);
   if ((~rxcaldone & (u32)BMASK(10, 10)) == 0)
    pr_info("Serdes %d chan %d calibration failed\n",
     IBSD(ppd->hw_pidx), chan);
  }
 }


 ibsd_wr_allchans(ppd, 4, 0, BMASK(10, 10));
 msleep(20);



 le_val = IS_QME(ppd->dd) ? LE2_QME : LE2_DEFAULT;
 ibsd_wr_allchans(ppd, 13, (le_val << 7), BMASK(9, 7));

 ibsd_wr_allchans(ppd, 3, (7 << 5), BMASK(7, 5));

 ibsd_wr_allchans(ppd, 13, (1 << 6), BMASK(6, 6));
 msleep(20);

 ibsd_wr_allchans(ppd, 1, 1, BMASK(9, 1));

 le_val = (ppd->dd->cspec->r1 || IS_QME(ppd->dd)) ? 0xb6c0 : 0x6bac;
 ibsd_wr_allchans(ppd, 21, le_val, 0xfffe);

 ibsd_wr_allchans(ppd, 5, 0, BMASK(0, 0));
 msleep(20);

 ibsd_wr_allchans(ppd, 2, (15 << 5), BMASK(8, 5));

 ibsd_wr_allchans(ppd, 2, (1 << 4), BMASK(4, 4));

 ibsd_wr_allchans(ppd, 2, 0, BMASK(11, 9));

 ibsd_wr_allchans(ppd, 2, (1 << 3), BMASK(3, 3));
 msleep(50);




 qib_write_kreg_port(ppd, krp_static_adapt_dis(0), 0ULL);
 qib_write_kreg_port(ppd, krp_static_adapt_dis(1), 0ULL);
 qib_write_kreg_port(ppd, krp_static_adapt_dis(2),
       ppd->dd->cspec->r1 ?
       QDR_STATIC_ADAPT_DOWN_R1 : QDR_STATIC_ADAPT_DOWN);
 ppd->cpspec->qdr_dfe_on = 1;

 ibsd_wr_allchans(ppd, 13, (0 << 5), (1 << 5));

 ibsd_wr_allchans(ppd, 1, (0 << 15), BMASK(15, 15));
 msleep(20);

 ibsd_wr_allchans(ppd, 12, (1 << 12), BMASK(12, 12));

 ibsd_wr_allchans(ppd, 12, (1 << 13), BMASK(13, 13));

 ibsd_wr_allchans(ppd, 11, (1 << 11), BMASK(12, 11));

 ibsd_wr_allchans(ppd, 12, (3 << 2), BMASK(3, 2));





 init_txdds_table(ppd, 0);

 return 0;
}

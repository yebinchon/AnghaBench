
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thunderx_ocx {scalar_t__ regs; } ;


 scalar_t__ OCX_LNE_CFG (int) ;
 int OCX_LNE_CFG_RX_STAT_ENA ;
 int OCX_LNE_CFG_RX_STAT_RDCLR ;
 scalar_t__ OCX_LNE_STAT (int,int) ;
 int OCX_RX_LANES ;
 int OCX_RX_LANE_STATS ;
 int readq (scalar_t__) ;
 int writeq (int,scalar_t__) ;

__attribute__((used)) static void thunderx_ocx_clearstats(struct thunderx_ocx *ocx)
{
 int lane, stat, cfg;

 for (lane = 0; lane < OCX_RX_LANES; lane++) {
  cfg = readq(ocx->regs + OCX_LNE_CFG(lane));
  cfg |= OCX_LNE_CFG_RX_STAT_RDCLR;
  cfg &= ~OCX_LNE_CFG_RX_STAT_ENA;
  writeq(cfg, ocx->regs + OCX_LNE_CFG(lane));

  for (stat = 0; stat < OCX_RX_LANE_STATS; stat++)
   readq(ocx->regs + OCX_LNE_STAT(lane, stat));
 }
}

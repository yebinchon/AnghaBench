
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct txdds_ent {int dummy; } ;
struct qib_pportdata {scalar_t__ link_speed_active; } ;


 scalar_t__ QIB_IB_DDR ;
 scalar_t__ QIB_IB_QDR ;
 int find_best_ent (struct qib_pportdata*,struct txdds_ent const**,struct txdds_ent const**,struct txdds_ent const**,int) ;
 int write_tx_serdes_param (struct qib_pportdata*,struct txdds_ent*) ;

__attribute__((used)) static void adj_tx_serdes(struct qib_pportdata *ppd)
{
 const struct txdds_ent *sdr_dds, *ddr_dds, *qdr_dds;
 struct txdds_ent *dds;

 find_best_ent(ppd, &sdr_dds, &ddr_dds, &qdr_dds, 1);
 dds = (struct txdds_ent *)(ppd->link_speed_active == QIB_IB_QDR ?
  qdr_dds : (ppd->link_speed_active == QIB_IB_DDR ?
    ddr_dds : sdr_dds));
 write_tx_serdes_param(ppd, dds);
}

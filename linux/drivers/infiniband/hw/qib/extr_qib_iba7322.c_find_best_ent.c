
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct txdds_ent {int dummy; } ;
struct vendor_txdds_ent {struct txdds_ent qdr; struct txdds_ent ddr; struct txdds_ent sdr; int partnum; int oui; } ;
struct qib_qsfp_cache {scalar_t__* atten; int tech; int partnum; int oui; } ;
struct qib_pportdata {int port; TYPE_3__* dd; TYPE_2__* cpspec; } ;
struct TYPE_7__ {int board_atten; int unit; } ;
struct TYPE_5__ {struct qib_qsfp_cache cache; } ;
struct TYPE_6__ {int no_eep; TYPE_1__ qsfp_data; } ;


 int ARRAY_SIZE (struct vendor_txdds_ent*) ;
 scalar_t__ IS_QME (TYPE_3__*) ;
 scalar_t__ IS_QMH (TYPE_3__*) ;
 scalar_t__ QSFP_HAS_ATTEN (int ) ;
 scalar_t__ QSFP_IS_ACTIVE (int ) ;
 int QSFP_PN_LEN ;
 int QSFP_VOUI_LEN ;
 int TXDDS_EXTRA_SZ ;
 int TXDDS_MFG_SZ ;
 int TXDDS_TABLE_SZ ;
 struct txdds_ent* get_atten_table (struct txdds_ent*,scalar_t__) ;
 int memcmp (int ,int ,int ) ;
 int pr_info (char*,int ,int ,int) ;
 int qib_long_atten ;
 struct txdds_ent* txdds_ddr ;
 struct txdds_ent* txdds_extra_ddr ;
 struct txdds_ent* txdds_extra_mfg ;
 struct txdds_ent* txdds_extra_qdr ;
 struct txdds_ent* txdds_extra_sdr ;
 struct txdds_ent* txdds_qdr ;
 struct txdds_ent* txdds_sdr ;
 struct vendor_txdds_ent* vendor_txdds ;

__attribute__((used)) static void find_best_ent(struct qib_pportdata *ppd,
     const struct txdds_ent **sdr_dds,
     const struct txdds_ent **ddr_dds,
     const struct txdds_ent **qdr_dds, int override)
{
 struct qib_qsfp_cache *qd = &ppd->cpspec->qsfp_data.cache;
 int idx;


 for (idx = 0; !override && idx < ARRAY_SIZE(vendor_txdds); ++idx) {
  const struct vendor_txdds_ent *v = vendor_txdds + idx;

  if (!memcmp(v->oui, qd->oui, QSFP_VOUI_LEN) &&
      (!v->partnum ||
       !memcmp(v->partnum, qd->partnum, QSFP_PN_LEN))) {
   *sdr_dds = &v->sdr;
   *ddr_dds = &v->ddr;
   *qdr_dds = &v->qdr;
   return;
  }
 }



 if (!override && QSFP_IS_ACTIVE(qd->tech)) {
  *sdr_dds = txdds_sdr + ppd->dd->board_atten;
  *ddr_dds = txdds_ddr + ppd->dd->board_atten;
  *qdr_dds = txdds_qdr + ppd->dd->board_atten;
  return;
 }

 if (!override && QSFP_HAS_ATTEN(qd->tech) && (qd->atten[0] ||
            qd->atten[1])) {
  *sdr_dds = get_atten_table(txdds_sdr, qd->atten[0]);
  *ddr_dds = get_atten_table(txdds_ddr, qd->atten[0]);
  *qdr_dds = get_atten_table(txdds_qdr, qd->atten[1]);
  return;
 } else if (ppd->cpspec->no_eep < TXDDS_TABLE_SZ) {






  idx = ppd->cpspec->no_eep;
  *sdr_dds = &txdds_sdr[idx];
  *ddr_dds = &txdds_ddr[idx];
  *qdr_dds = &txdds_qdr[idx];
 } else if (ppd->cpspec->no_eep < (TXDDS_TABLE_SZ + TXDDS_EXTRA_SZ)) {

  idx = ppd->cpspec->no_eep - TXDDS_TABLE_SZ;
  *sdr_dds = &txdds_extra_sdr[idx];
  *ddr_dds = &txdds_extra_ddr[idx];
  *qdr_dds = &txdds_extra_qdr[idx];
 } else if ((IS_QME(ppd->dd) || IS_QMH(ppd->dd)) &&
     ppd->cpspec->no_eep < (TXDDS_TABLE_SZ + TXDDS_EXTRA_SZ +
       TXDDS_MFG_SZ)) {
  idx = ppd->cpspec->no_eep - (TXDDS_TABLE_SZ + TXDDS_EXTRA_SZ);
  pr_info("IB%u:%u use idx %u into txdds_mfg\n",
   ppd->dd->unit, ppd->port, idx);
  *sdr_dds = &txdds_extra_mfg[idx];
  *ddr_dds = &txdds_extra_mfg[idx];
  *qdr_dds = &txdds_extra_mfg[idx];
 } else {

  *sdr_dds = txdds_sdr + qib_long_atten;
  *ddr_dds = txdds_ddr + qib_long_atten;
  *qdr_dds = txdds_qdr + qib_long_atten;
 }
}

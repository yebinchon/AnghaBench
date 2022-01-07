
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct txdds_ent {int amp; int main; int pre; int post; } ;
struct qib_pportdata {struct qib_devdata* dd; scalar_t__ hw_pidx; } ;
struct qib_devdata {int palign; } ;


 int DDS_ENT_AMP_LSB ;
 int DDS_ENT_MAIN_LSB ;
 int DDS_ENT_POST_LSB ;
 int DDS_ENT_PRE_LSB ;
 int IBSD_DDS_MAP_TABLE ;
 int KREG_IBPORT_IDX (int ) ;
 int kr_scratch ;
 int qib_write_kreg (struct qib_devdata*,int,int) ;

__attribute__((used)) static void set_txdds(struct qib_pportdata *ppd, int ridx,
        const struct txdds_ent *tp)
{
 struct qib_devdata *dd = ppd->dd;
 u32 pack_ent;
 int regidx;


 regidx = KREG_IBPORT_IDX(IBSD_DDS_MAP_TABLE) + ridx;





 if (ppd->hw_pidx)
  regidx += (dd->palign / sizeof(u64));

 pack_ent = tp->amp << DDS_ENT_AMP_LSB;
 pack_ent |= tp->main << DDS_ENT_MAIN_LSB;
 pack_ent |= tp->pre << DDS_ENT_PRE_LSB;
 pack_ent |= tp->post << DDS_ENT_POST_LSB;
 qib_write_kreg(dd, regidx, pack_ent);

 qib_write_kreg(ppd->dd, kr_scratch, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int control; } ;


 int QLOGIC_IB_C_LINKENABLE ;
 int QLOGIC_IB_XGXS_RESET ;
 int kr_control ;
 int kr_scratch ;
 int kr_xgxs_cfg ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_read_kreg64 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;

__attribute__((used)) static void qib_7220_xgxs_reset(struct qib_pportdata *ppd)
{
 u64 val, prev_val;
 struct qib_devdata *dd = ppd->dd;

 prev_val = qib_read_kreg64(dd, kr_xgxs_cfg);
 val = prev_val | QLOGIC_IB_XGXS_RESET;
 prev_val &= ~QLOGIC_IB_XGXS_RESET;
 qib_write_kreg(dd, kr_control,
         dd->control & ~QLOGIC_IB_C_LINKENABLE);
 qib_write_kreg(dd, kr_xgxs_cfg, val);
 qib_read_kreg32(dd, kr_scratch);
 qib_write_kreg(dd, kr_xgxs_cfg, prev_val);
 qib_write_kreg(dd, kr_control, dd->control);
}

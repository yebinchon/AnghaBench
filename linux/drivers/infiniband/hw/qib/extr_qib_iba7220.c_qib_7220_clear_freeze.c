
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {unsigned long long control; TYPE_1__* cspec; int pport; } ;
struct TYPE_2__ {unsigned long long errormask; } ;


 unsigned long long E_SPKT_ERRS_IGNORE ;
 int kr_control ;
 int kr_errclear ;
 int kr_errmask ;
 int kr_hwerrclear ;
 int kr_scratch ;
 int qib_7220_set_intr_state (struct qib_devdata*,int) ;
 int qib_cancel_sends (int ) ;
 int qib_force_pio_avail_update (struct qib_devdata*) ;
 int qib_read_kreg32 (struct qib_devdata*,int ) ;
 int qib_write_kreg (struct qib_devdata*,int ,unsigned long long) ;

__attribute__((used)) static void qib_7220_clear_freeze(struct qib_devdata *dd)
{

 qib_write_kreg(dd, kr_errmask, 0ULL);


 qib_7220_set_intr_state(dd, 0);

 qib_cancel_sends(dd->pport);


 qib_write_kreg(dd, kr_control, dd->control);
 qib_read_kreg32(dd, kr_scratch);


 qib_force_pio_avail_update(dd);







 qib_write_kreg(dd, kr_hwerrclear, 0ULL);
 qib_write_kreg(dd, kr_errclear, E_SPKT_ERRS_IGNORE);
 qib_write_kreg(dd, kr_errmask, dd->cspec->errormask);
 qib_7220_set_intr_state(dd, 1);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int errormask; } ;


 int QIB_E_SPIOARMLAUNCH ;
 int kr_errclear ;
 int kr_errmask ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;

__attribute__((used)) static void qib_set_7322_armlaunch(struct qib_devdata *dd, u32 enable)
{
 if (enable) {
  qib_write_kreg(dd, kr_errclear, QIB_E_SPIOARMLAUNCH);
  dd->cspec->errormask |= QIB_E_SPIOARMLAUNCH;
 } else
  dd->cspec->errormask &= ~QIB_E_SPIOARMLAUNCH;
 qib_write_kreg(dd, kr_errmask, dd->cspec->errormask);
}

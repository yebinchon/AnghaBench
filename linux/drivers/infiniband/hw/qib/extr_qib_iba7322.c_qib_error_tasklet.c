
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qib_devdata {TYPE_1__* cspec; } ;
struct TYPE_2__ {int errormask; } ;


 int handle_7322_errors (struct qib_devdata*) ;
 int kr_errmask ;
 int qib_write_kreg (struct qib_devdata*,int ,int ) ;

__attribute__((used)) static void qib_error_tasklet(unsigned long data)
{
 struct qib_devdata *dd = (struct qib_devdata *)data;

 handle_7322_errors(dd);
 qib_write_kreg(dd, kr_errmask, dd->cspec->errormask);
}

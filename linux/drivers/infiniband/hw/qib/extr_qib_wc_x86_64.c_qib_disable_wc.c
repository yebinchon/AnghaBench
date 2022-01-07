
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int wc_cookie; } ;


 int arch_phys_wc_del (int ) ;

void qib_disable_wc(struct qib_devdata *dd)
{
 arch_phys_wc_del(dd->wc_cookie);
}

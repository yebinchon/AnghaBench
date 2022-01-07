
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int (* f_get_ib_cfg ) (struct qib_pportdata*,int ) ;} ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 int QIB_IB_CFG_HRTBT ;
 int scnprintf (char*,int ,char*,int) ;
 int stub1 (struct qib_pportdata*,int ) ;

__attribute__((used)) static ssize_t show_hrtbt_enb(struct qib_pportdata *ppd, char *buf)
{
 struct qib_devdata *dd = ppd->dd;
 int ret;

 ret = dd->f_get_ib_cfg(ppd, QIB_IB_CFG_HRTBT);
 ret = scnprintf(buf, PAGE_SIZE, "%d\n", ret);
 return ret;
}

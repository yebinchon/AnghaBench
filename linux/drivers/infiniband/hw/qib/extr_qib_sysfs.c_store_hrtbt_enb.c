
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int (* f_set_ib_cfg ) (struct qib_pportdata*,int ,int ) ;} ;
typedef int ssize_t ;


 int QIB_IB_CFG_HRTBT ;
 int kstrtou16 (char const*,int ,int *) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int stub1 (struct qib_pportdata*,int ,int ) ;

__attribute__((used)) static ssize_t store_hrtbt_enb(struct qib_pportdata *ppd, const char *buf,
          size_t count)
{
 struct qib_devdata *dd = ppd->dd;
 int ret;
 u16 val;

 ret = kstrtou16(buf, 0, &val);
 if (ret) {
  qib_dev_err(dd, "attempt to set invalid Heartbeat enable\n");
  return ret;
 }
 ret = dd->f_set_ib_cfg(ppd, QIB_IB_CFG_HRTBT, val);
 return ret < 0 ? ret : count;
}

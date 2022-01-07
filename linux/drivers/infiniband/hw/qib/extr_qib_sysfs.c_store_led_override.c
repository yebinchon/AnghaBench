
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int dummy; } ;
typedef int ssize_t ;


 int kstrtou16 (char const*,int ,int *) ;
 int qib_dev_err (struct qib_devdata*,char*) ;
 int qib_set_led_override (struct qib_pportdata*,int ) ;

__attribute__((used)) static ssize_t store_led_override(struct qib_pportdata *ppd, const char *buf,
      size_t count)
{
 struct qib_devdata *dd = ppd->dd;
 int ret;
 u16 val;

 ret = kstrtou16(buf, 0, &val);
 if (ret) {
  qib_dev_err(dd, "attempt to set invalid LED override\n");
  return ret;
 }

 qib_set_led_override(ppd, val);
 return count;
}

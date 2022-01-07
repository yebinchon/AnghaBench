
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nx842_devdata {TYPE_1__* counters; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
typedef int atomic64_t ;
struct TYPE_2__ {int * decomp_times; int * comp_times; } ;


 int NX842_HIST_SLOTS ;
 int PAGE_SIZE ;
 int atomic64_read (int *) ;
 struct device_attribute dev_attr_comp_times ;
 struct device_attribute dev_attr_decomp_times ;
 int devdata ;
 struct nx842_devdata* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int snprintf (char*,int,char*,int,int,...) ;

__attribute__((used)) static ssize_t nx842_timehist_show(struct device *dev,
  struct device_attribute *attr, char *buf) {
 char *p = buf;
 struct nx842_devdata *local_devdata;
 atomic64_t *times;
 int bytes_remain = PAGE_SIZE;
 int bytes;
 int i;

 rcu_read_lock();
 local_devdata = rcu_dereference(devdata);
 if (!local_devdata) {
  rcu_read_unlock();
  return 0;
 }

 if (attr == &dev_attr_comp_times)
  times = local_devdata->counters->comp_times;
 else if (attr == &dev_attr_decomp_times)
  times = local_devdata->counters->decomp_times;
 else {
  rcu_read_unlock();
  return 0;
 }

 for (i = 0; i < (NX842_HIST_SLOTS - 2); i++) {
  bytes = snprintf(p, bytes_remain, "%u-%uus:\t%lld\n",
          i ? (2<<(i-1)) : 0, (2<<i)-1,
          atomic64_read(&times[i]));
  bytes_remain -= bytes;
  p += bytes;
 }


 bytes = snprintf(p, bytes_remain, "%uus - :\t%lld\n",
   2<<(NX842_HIST_SLOTS - 2),
   atomic64_read(&times[(NX842_HIST_SLOTS - 1)]));
 p += bytes;

 rcu_read_unlock();
 return p - buf;
}

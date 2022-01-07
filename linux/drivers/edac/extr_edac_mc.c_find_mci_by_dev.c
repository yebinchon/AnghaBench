
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_ctl_info {int dummy; } ;
struct device {int dummy; } ;


 struct mem_ctl_info* __find_mci_by_dev (struct device*) ;
 int mem_ctls_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

struct mem_ctl_info *find_mci_by_dev(struct device *dev)
{
 struct mem_ctl_info *ret;

 mutex_lock(&mem_ctls_mutex);
 ret = __find_mci_by_dev(dev);
 mutex_unlock(&mem_ctls_mutex);

 return ret;
}

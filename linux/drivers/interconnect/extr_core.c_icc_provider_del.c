
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icc_provider {int provider_list; int nodes; scalar_t__ users; } ;


 int EBUSY ;
 int icc_lock ;
 int list_del (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,...) ;

int icc_provider_del(struct icc_provider *provider)
{
 mutex_lock(&icc_lock);
 if (provider->users) {
  pr_warn("interconnect provider still has %d users\n",
   provider->users);
  mutex_unlock(&icc_lock);
  return -EBUSY;
 }

 if (!list_empty(&provider->nodes)) {
  pr_warn("interconnect provider still has nodes\n");
  mutex_unlock(&icc_lock);
  return -EBUSY;
 }

 list_del(&provider->provider_list);
 mutex_unlock(&icc_lock);

 return 0;
}

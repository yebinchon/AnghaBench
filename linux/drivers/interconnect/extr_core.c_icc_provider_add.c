
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct icc_provider {int dev; int provider_list; int nodes; int xlate; int set; } ;


 int EINVAL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ WARN_ON (int) ;
 int dev_dbg (int ,char*) ;
 int icc_lock ;
 int icc_providers ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int icc_provider_add(struct icc_provider *provider)
{
 if (WARN_ON(!provider->set))
  return -EINVAL;
 if (WARN_ON(!provider->xlate))
  return -EINVAL;

 mutex_lock(&icc_lock);

 INIT_LIST_HEAD(&provider->nodes);
 list_add_tail(&provider->provider_list, &icc_providers);

 mutex_unlock(&icc_lock);

 dev_dbg(provider->dev, "interconnect provider added to topology\n");

 return 0;
}

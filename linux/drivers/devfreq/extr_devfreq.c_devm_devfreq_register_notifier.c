
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct device {int dummy; } ;
struct devfreq_notifier_devres {unsigned int list; struct notifier_block* nb; struct devfreq* devfreq; } ;
struct devfreq {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devfreq_register_notifier (struct devfreq*,struct notifier_block*,unsigned int) ;
 int devm_devfreq_notifier_release ;
 int devres_add (struct device*,struct devfreq_notifier_devres*) ;
 struct devfreq_notifier_devres* devres_alloc (int ,int,int ) ;
 int devres_free (struct devfreq_notifier_devres*) ;

int devm_devfreq_register_notifier(struct device *dev,
    struct devfreq *devfreq,
    struct notifier_block *nb,
    unsigned int list)
{
 struct devfreq_notifier_devres *ptr;
 int ret;

 ptr = devres_alloc(devm_devfreq_notifier_release, sizeof(*ptr),
    GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = devfreq_register_notifier(devfreq, nb, list);
 if (ret) {
  devres_free(ptr);
  return ret;
 }

 ptr->devfreq = devfreq;
 ptr->nb = nb;
 ptr->list = list;
 devres_add(dev, ptr);

 return 0;
}

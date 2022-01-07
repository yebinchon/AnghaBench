
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int devfreq_register_opp_notifier (struct device*,struct devfreq*) ;
 int devm_devfreq_opp_release ;
 int devres_add (struct device*,struct devfreq**) ;
 struct devfreq** devres_alloc (int ,int,int ) ;
 int devres_free (struct devfreq**) ;

int devm_devfreq_register_opp_notifier(struct device *dev,
           struct devfreq *devfreq)
{
 struct devfreq **ptr;
 int ret;

 ptr = devres_alloc(devm_devfreq_opp_release, sizeof(*ptr), GFP_KERNEL);
 if (!ptr)
  return -ENOMEM;

 ret = devfreq_register_opp_notifier(dev, devfreq);
 if (ret) {
  devres_free(ptr);
  return ret;
 }

 *ptr = devfreq;
 devres_add(dev, ptr);

 return 0;
}

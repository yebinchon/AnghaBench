
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq_event_dev {int dummy; } ;
struct devfreq_event_desc {int dummy; } ;


 int ENOMEM ;
 struct devfreq_event_dev* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct devfreq_event_dev*) ;
 struct devfreq_event_dev* devfreq_event_add_edev (struct device*,struct devfreq_event_desc*) ;
 int devm_devfreq_event_release ;
 int devres_add (struct device*,struct devfreq_event_dev**) ;
 struct devfreq_event_dev** devres_alloc (int ,int,int ) ;
 int devres_free (struct devfreq_event_dev**) ;

struct devfreq_event_dev *devm_devfreq_event_add_edev(struct device *dev,
      struct devfreq_event_desc *desc)
{
 struct devfreq_event_dev **ptr, *edev;

 ptr = devres_alloc(devm_devfreq_event_release, sizeof(*ptr),
    GFP_KERNEL);
 if (!ptr)
  return ERR_PTR(-ENOMEM);

 edev = devfreq_event_add_edev(dev, desc);
 if (IS_ERR(edev)) {
  devres_free(ptr);
  return ERR_PTR(-ENOMEM);
 }

 *ptr = edev;
 devres_add(dev, ptr);

 return edev;
}

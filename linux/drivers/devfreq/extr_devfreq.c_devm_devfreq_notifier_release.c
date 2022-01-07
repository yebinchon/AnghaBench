
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq_notifier_devres {int list; int nb; int devfreq; } ;


 int devfreq_unregister_notifier (int ,int ,int ) ;

__attribute__((used)) static void devm_devfreq_notifier_release(struct device *dev, void *res)
{
 struct devfreq_notifier_devres *this = res;

 devfreq_unregister_notifier(this->devfreq, this->nb, this->list);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq {int dummy; } ;


 int devfreq_remove_device (struct devfreq*) ;

__attribute__((used)) static void devm_devfreq_dev_release(struct device *dev, void *res)
{
 devfreq_remove_device(*(struct devfreq **)res);
}

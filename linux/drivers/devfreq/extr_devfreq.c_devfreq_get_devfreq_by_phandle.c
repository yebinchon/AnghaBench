
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct devfreq {int dummy; } ;


 int ENODEV ;
 struct devfreq* ERR_PTR (int ) ;

struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
{
 return ERR_PTR(-ENODEV);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef void devfreq ;


 scalar_t__ WARN_ON (int) ;

__attribute__((used)) static int devm_devfreq_dev_match(struct device *dev, void *res, void *data)
{
 struct devfreq **r = res;

 if (WARN_ON(!r || !*r))
  return 0;

 return *r == data;
}

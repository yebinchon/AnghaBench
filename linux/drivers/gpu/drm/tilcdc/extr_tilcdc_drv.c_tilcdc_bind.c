
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int tilcdc_driver ;
 int tilcdc_init (int *,struct device*) ;

__attribute__((used)) static int tilcdc_bind(struct device *dev)
{
 return tilcdc_init(&tilcdc_driver, dev);
}

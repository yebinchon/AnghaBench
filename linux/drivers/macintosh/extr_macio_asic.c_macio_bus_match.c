
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct of_device_id {int dummy; } ;
struct device_driver {struct of_device_id* of_match_table; } ;
struct device {int dummy; } ;


 int * of_match_device (struct of_device_id const*,struct device*) ;

__attribute__((used)) static int macio_bus_match(struct device *dev, struct device_driver *drv)
{
 const struct of_device_id * matches = drv->of_match_table;

 if (!matches)
  return 0;

 return of_match_device(matches, dev) != ((void*)0);
}

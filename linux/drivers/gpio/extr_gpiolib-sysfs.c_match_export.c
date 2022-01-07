
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpiod_data {void const* desc; } ;
struct device {int dummy; } ;


 struct gpiod_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int match_export(struct device *dev, const void *desc)
{
 struct gpiod_data *data = dev_get_drvdata(dev);

 return data->desc == desc;
}

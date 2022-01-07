
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct device {int dummy; } ;
struct adt7x10_data {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_byte ) (struct device*,int ) ;} ;


 struct adt7x10_data* dev_get_drvdata (struct device*) ;
 int stub1 (struct device*,int ) ;

__attribute__((used)) static int adt7x10_read_byte(struct device *dev, u8 reg)
{
 struct adt7x10_data *d = dev_get_drvdata(dev);
 return d->ops->read_byte(dev, reg);
}

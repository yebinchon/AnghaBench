
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct device {int dummy; } ;
struct adt7x10_data {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_word ) (struct device*,int ,int ) ;} ;


 struct adt7x10_data* dev_get_drvdata (struct device*) ;
 int stub1 (struct device*,int ,int ) ;

__attribute__((used)) static int adt7x10_write_word(struct device *dev, u8 reg, u16 data)
{
 struct adt7x10_data *d = dev_get_drvdata(dev);
 return d->ops->write_word(dev, reg, data);
}

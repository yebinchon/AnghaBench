
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;
struct davinci_i2c_dev {int dummy; } ;


 int i2c_davinci_init (struct davinci_i2c_dev*) ;
 struct davinci_i2c_dev* i2c_get_adapdata (struct i2c_adapter*) ;

__attribute__((used)) static void davinci_i2c_unprepare_recovery(struct i2c_adapter *adap)
{
 struct davinci_i2c_dev *dev = i2c_get_adapdata(adap);

 i2c_davinci_init(dev);
}

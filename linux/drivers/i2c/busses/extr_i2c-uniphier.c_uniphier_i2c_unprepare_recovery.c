
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_adapter {int dummy; } ;


 int i2c_get_adapdata (struct i2c_adapter*) ;
 int uniphier_i2c_reset (int ,int) ;

__attribute__((used)) static void uniphier_i2c_unprepare_recovery(struct i2c_adapter *adap)
{
 uniphier_i2c_reset(i2c_get_adapdata(adap), 0);
}

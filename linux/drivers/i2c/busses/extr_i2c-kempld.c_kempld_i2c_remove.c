
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct platform_device {int dummy; } ;
struct kempld_i2c_data {int adap; int was_active; struct kempld_device_data* pld; } ;
struct kempld_device_data {int dummy; } ;


 int I2C_CTRL_EN ;
 int KEMPLD_I2C_CTRL ;
 int i2c_del_adapter (int *) ;
 int kempld_get_mutex (struct kempld_device_data*) ;
 int kempld_read8 (struct kempld_device_data*,int ) ;
 int kempld_release_mutex (struct kempld_device_data*) ;
 int kempld_write8 (struct kempld_device_data*,int ,int ) ;
 struct kempld_i2c_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int kempld_i2c_remove(struct platform_device *pdev)
{
 struct kempld_i2c_data *i2c = platform_get_drvdata(pdev);
 struct kempld_device_data *pld = i2c->pld;
 u8 ctrl;

 kempld_get_mutex(pld);




 if (!i2c->was_active) {
  ctrl = kempld_read8(pld, KEMPLD_I2C_CTRL);
  ctrl &= ~I2C_CTRL_EN;
  kempld_write8(pld, KEMPLD_I2C_CTRL, ctrl);
 }
 kempld_release_mutex(pld);

 i2c_del_adapter(&i2c->adap);

 return 0;
}

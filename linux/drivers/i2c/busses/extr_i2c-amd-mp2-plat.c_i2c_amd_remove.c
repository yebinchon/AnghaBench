
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct amd_i2c_common {int * mp2_dev; } ;
struct amd_i2c_dev {int adap; struct amd_i2c_common common; } ;


 int I2C_LOCK_ROOT_ADAPTER ;
 int amd_mp2_unregister_cb (struct amd_i2c_common*) ;
 int i2c_amd_enable_set (struct amd_i2c_dev*,int) ;
 int i2c_del_adapter (int *) ;
 int i2c_lock_bus (int *,int ) ;
 int i2c_unlock_bus (int *,int ) ;
 struct amd_i2c_dev* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int i2c_amd_remove(struct platform_device *pdev)
{
 struct amd_i2c_dev *i2c_dev = platform_get_drvdata(pdev);
 struct amd_i2c_common *i2c_common = &i2c_dev->common;

 i2c_lock_bus(&i2c_dev->adap, I2C_LOCK_ROOT_ADAPTER);

 i2c_amd_enable_set(i2c_dev, 0);
 amd_mp2_unregister_cb(i2c_common);
 i2c_common->mp2_dev = ((void*)0);

 i2c_unlock_bus(&i2c_dev->adap, I2C_LOCK_ROOT_ADAPTER);

 i2c_del_adapter(&i2c_dev->adap);
 return 0;
}

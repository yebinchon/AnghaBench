
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_dummy_devres {int client; } ;
struct device {int dummy; } ;


 int i2c_unregister_device (int ) ;

__attribute__((used)) static void devm_i2c_release_dummy(struct device *dev, void *res)
{
 struct i2c_dummy_devres *this = res;

 i2c_unregister_device(this->client);
}

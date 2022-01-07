
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_device_id {int name; int driver_data; } ;
struct i2c_client {int dev; } ;


 int ad5686_i2c_read ;
 int ad5686_i2c_write ;
 int ad5686_probe (int *,int ,int ,int ,int ) ;

__attribute__((used)) static int ad5686_i2c_probe(struct i2c_client *i2c,
       const struct i2c_device_id *id)
{
 return ad5686_probe(&i2c->dev, id->driver_data, id->name,
       ad5686_i2c_write, ad5686_i2c_read);
}

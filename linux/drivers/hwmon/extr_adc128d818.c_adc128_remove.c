
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct adc128_data {scalar_t__ regulator; } ;


 struct adc128_data* i2c_get_clientdata (struct i2c_client*) ;
 int regulator_disable (scalar_t__) ;

__attribute__((used)) static int adc128_remove(struct i2c_client *client)
{
 struct adc128_data *data = i2c_get_clientdata(client);

 if (data->regulator)
  regulator_disable(data->regulator);

 return 0;
}

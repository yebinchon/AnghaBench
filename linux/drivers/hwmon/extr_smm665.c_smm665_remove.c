
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smm665_data {int cmdreg; } ;
struct i2c_client {int dummy; } ;


 struct smm665_data* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;

__attribute__((used)) static int smm665_remove(struct i2c_client *client)
{
 struct smm665_data *data = i2c_get_clientdata(client);

 i2c_unregister_device(data->cmdreg);
 return 0;
}

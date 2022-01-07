
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct cma3000_accl_data {int dummy; } ;


 int cma3000_exit (struct cma3000_accl_data*) ;
 struct cma3000_accl_data* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int cma3000_i2c_remove(struct i2c_client *client)
{
 struct cma3000_accl_data *data = i2c_get_clientdata(client);

 cma3000_exit(data);

 return 0;
}

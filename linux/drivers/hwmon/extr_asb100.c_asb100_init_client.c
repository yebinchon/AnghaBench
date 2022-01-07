
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct asb100_data {int vrm; } ;


 int ASB100_REG_CONFIG ;
 int asb100_read_value (struct i2c_client*,int ) ;
 int asb100_write_value (struct i2c_client*,int ,int) ;
 struct asb100_data* i2c_get_clientdata (struct i2c_client*) ;
 int vid_which_vrm () ;

__attribute__((used)) static void asb100_init_client(struct i2c_client *client)
{
 struct asb100_data *data = i2c_get_clientdata(client);

 data->vrm = vid_which_vrm();


 asb100_write_value(client, ASB100_REG_CONFIG,
  (asb100_read_value(client, ASB100_REG_CONFIG) & 0xf7) | 0x01);
}

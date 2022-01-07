
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mn88443x_priv {int client_t; } ;
struct i2c_client {int dummy; } ;


 struct mn88443x_priv* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int mn88443x_cmn_power_off (struct mn88443x_priv*) ;

__attribute__((used)) static int mn88443x_remove(struct i2c_client *client)
{
 struct mn88443x_priv *chip = i2c_get_clientdata(client);

 mn88443x_cmn_power_off(chip);

 i2c_unregister_device(chip->client_t);

 return 0;
}

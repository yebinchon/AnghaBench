
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlc591xx_priv {int dummy; } ;
struct i2c_client {int dummy; } ;


 int TLC591XX_MAX_LEDS ;
 struct tlc591xx_priv* i2c_get_clientdata (struct i2c_client*) ;
 int tlc591xx_destroy_devices (struct tlc591xx_priv*,int ) ;

__attribute__((used)) static int
tlc591xx_remove(struct i2c_client *client)
{
 struct tlc591xx_priv *priv = i2c_get_clientdata(client);

 tlc591xx_destroy_devices(priv, TLC591XX_MAX_LEDS);

 return 0;
}

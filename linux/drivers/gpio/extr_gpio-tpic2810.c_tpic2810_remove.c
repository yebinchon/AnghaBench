
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tpic2810 {int chip; } ;
struct i2c_client {int dummy; } ;


 int gpiochip_remove (int *) ;
 struct tpic2810* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static int tpic2810_remove(struct i2c_client *client)
{
 struct tpic2810 *gpio = i2c_get_clientdata(client);

 gpiochip_remove(&gpio->chip);

 return 0;
}

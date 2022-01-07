
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ngpio; } ;
struct pcf857x {TYPE_1__ chip; int client; int (* write ) (int ,scalar_t__) ;} ;
struct i2c_client {int dummy; } ;


 scalar_t__ BIT (int ) ;
 struct pcf857x* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (int ,scalar_t__) ;

__attribute__((used)) static void pcf857x_shutdown(struct i2c_client *client)
{
 struct pcf857x *gpio = i2c_get_clientdata(client);


 gpio->write(gpio->client, BIT(gpio->chip.ngpio) - 1);
}

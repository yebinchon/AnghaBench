
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * parent; } ;
struct tpic2810 {TYPE_1__ chip; int lock; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int *,char*) ;
 struct tpic2810* devm_kzalloc (int *,int,int ) ;
 int gpiochip_add_data (TYPE_1__*,struct tpic2810*) ;
 int i2c_set_clientdata (struct i2c_client*,struct tpic2810*) ;
 int mutex_init (int *) ;
 TYPE_1__ template_chip ;

__attribute__((used)) static int tpic2810_probe(struct i2c_client *client,
     const struct i2c_device_id *id)
{
 struct tpic2810 *gpio;
 int ret;

 gpio = devm_kzalloc(&client->dev, sizeof(*gpio), GFP_KERNEL);
 if (!gpio)
  return -ENOMEM;

 i2c_set_clientdata(client, gpio);

 gpio->chip = template_chip;
 gpio->chip.parent = &client->dev;

 gpio->client = client;

 mutex_init(&gpio->lock);

 ret = gpiochip_add_data(&gpio->chip, gpio);
 if (ret < 0) {
  dev_err(&client->dev, "Unable to register gpiochip\n");
  return ret;
 }

 return 0;
}

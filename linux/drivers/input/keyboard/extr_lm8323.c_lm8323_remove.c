
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lm8323_chip {TYPE_1__* pwm; TYPE_2__* client; int idev; } ;
struct i2c_client {int irq; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {int cdev; scalar_t__ enabled; } ;


 int dev_attr_disable_kp ;
 int device_remove_file (int *,int *) ;
 int disable_irq_wake (int ) ;
 int free_irq (int ,struct lm8323_chip*) ;
 struct lm8323_chip* i2c_get_clientdata (struct i2c_client*) ;
 int input_unregister_device (int ) ;
 int kfree (struct lm8323_chip*) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int lm8323_remove(struct i2c_client *client)
{
 struct lm8323_chip *lm = i2c_get_clientdata(client);
 int i;

 disable_irq_wake(client->irq);
 free_irq(client->irq, lm);

 input_unregister_device(lm->idev);

 device_remove_file(&lm->client->dev, &dev_attr_disable_kp);

 for (i = 0; i < 3; i++)
  if (lm->pwm[i].enabled)
   led_classdev_unregister(&lm->pwm[i].cdev);

 kfree(lm);

 return 0;
}

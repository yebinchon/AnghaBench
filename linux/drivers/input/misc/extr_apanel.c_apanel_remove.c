
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct apanel {int ipdev; int mail_led; } ;


 size_t APANEL_DEV_LED ;
 scalar_t__ CHIP_NONE ;
 scalar_t__* device_chip ;
 struct apanel* i2c_get_clientdata (struct i2c_client*) ;
 int input_free_polled_device (int ) ;
 int input_unregister_polled_device (int ) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int apanel_remove(struct i2c_client *client)
{
 struct apanel *ap = i2c_get_clientdata(client);

 if (device_chip[APANEL_DEV_LED] != CHIP_NONE)
  led_classdev_unregister(&ap->mail_led);

 input_unregister_polled_device(ap->ipdev);
 input_free_polled_device(ap->ipdev);

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ parent; } ;
struct pca9532_data {TYPE_2__ gpio; int * idev; int work; TYPE_1__* leds; } ;
struct TYPE_3__ {int type; int ldev; } ;


 int EINVAL ;




 int cancel_work_sync (int *) ;
 int gpiochip_remove (TYPE_2__*) ;
 int led_classdev_unregister (int *) ;

__attribute__((used)) static int pca9532_destroy_devices(struct pca9532_data *data, int n_devs)
{
 int i = n_devs;

 if (!data)
  return -EINVAL;

 while (--i >= 0) {
  switch (data->leds[i].type) {
  case 128:
  case 131:
   break;
  case 130:
   led_classdev_unregister(&data->leds[i].ldev);
   break;
  case 129:
   if (data->idev != ((void*)0)) {
    cancel_work_sync(&data->work);
    data->idev = ((void*)0);
   }
   break;
  }
 }






 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv7511 {int * audio_pdev; } ;


 int platform_device_unregister (int *) ;

void adv7511_audio_exit(struct adv7511 *adv7511)
{
 if (adv7511->audio_pdev) {
  platform_device_unregister(adv7511->audio_pdev);
  adv7511->audio_pdev = ((void*)0);
 }
}

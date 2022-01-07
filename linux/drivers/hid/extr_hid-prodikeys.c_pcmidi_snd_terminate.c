
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcmidi_snd {scalar_t__ card; TYPE_2__* pk; } ;
struct TYPE_4__ {TYPE_1__* hdev; } ;
struct TYPE_3__ {int dev; } ;


 int device_remove_file (int *,int ) ;
 int snd_card_disconnect (scalar_t__) ;
 int snd_card_free_when_closed (scalar_t__) ;
 int stop_sustain_timers (struct pcmidi_snd*) ;
 int sysfs_device_attr_channel ;
 int sysfs_device_attr_octave ;
 int sysfs_device_attr_sustain ;

__attribute__((used)) static int pcmidi_snd_terminate(struct pcmidi_snd *pm)
{
 if (pm->card) {
  stop_sustain_timers(pm);

  device_remove_file(&pm->pk->hdev->dev,
   sysfs_device_attr_channel);
  device_remove_file(&pm->pk->hdev->dev,
   sysfs_device_attr_sustain);
  device_remove_file(&pm->pk->hdev->dev,
   sysfs_device_attr_octave);

  snd_card_disconnect(pm->card);
  snd_card_free_when_closed(pm->card);
 }

 return 0;
}

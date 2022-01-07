
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pk_device {struct pk_device* pm; } ;
struct pcmidi_snd {struct pcmidi_snd* pm; } ;
struct hid_device {int dummy; } ;


 struct pk_device* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (struct pk_device*) ;
 int pcmidi_snd_terminate (struct pk_device*) ;

__attribute__((used)) static void pk_remove(struct hid_device *hdev)
{
 struct pk_device *pk = hid_get_drvdata(hdev);
 struct pcmidi_snd *pm;

 pm = pk->pm;
 if (pm) {
  pcmidi_snd_terminate(pm);
  kfree(pm);
 }

 hid_hw_stop(hdev);

 kfree(pk);
}

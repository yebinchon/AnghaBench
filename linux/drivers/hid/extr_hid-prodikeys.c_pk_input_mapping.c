
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pk_device {struct pcmidi_snd* pm; } ;
struct pcmidi_snd {int ifnum; } ;
struct hid_usage {int hid; } ;
struct hid_input {int input; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_UP_MSVENDOR ;
 int HID_USAGE_PAGE ;
 struct pk_device* hid_get_drvdata (struct hid_device*) ;
 int pcmidi_setup_extra_keys (struct pcmidi_snd*,int ) ;

__attribute__((used)) static int pk_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct pk_device *pk = hid_get_drvdata(hdev);
 struct pcmidi_snd *pm;

 pm = pk->pm;

 if (HID_UP_MSVENDOR == (usage->hid & HID_USAGE_PAGE) &&
  1 == pm->ifnum) {
  pcmidi_setup_extra_keys(pm, hi->input);
  return 0;
 }

 return 0;
}

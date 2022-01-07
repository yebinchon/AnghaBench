
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pk_device {TYPE_1__* pm; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int midi_sustain; } ;


 int PCMIDI_SUSTAIN_MAX ;
 int PCMIDI_SUSTAIN_MIN ;
 int dbg_hid (char*,int) ;
 struct pk_device* hid_get_drvdata (struct hid_device*) ;
 int sprintf (char*,char*,int,int,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t show_sustain(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct pk_device *pk = hid_get_drvdata(hdev);

 dbg_hid("pcmidi sysfs read sustain=%u\n", pk->pm->midi_sustain);

 return sprintf(buf, "%u (off:%u, max:%u (ms))\n", pk->pm->midi_sustain,
  PCMIDI_SUSTAIN_MIN, PCMIDI_SUSTAIN_MAX);
}


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
struct TYPE_2__ {int midi_octave; } ;


 int EINVAL ;
 int PCMIDI_OCTAVE_MAX ;
 int PCMIDI_OCTAVE_MIN ;
 int dbg_hid (char*,int) ;
 struct pk_device* hid_get_drvdata (struct hid_device*) ;
 scalar_t__ sscanf (char const*,char*,int*) ;
 int strlen (char const*) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t store_octave(struct device *dev,
 struct device_attribute *attr, const char *buf, size_t count)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct pk_device *pk = hid_get_drvdata(hdev);

 int octave = 0;

 if (sscanf(buf, "%d", &octave) > 0 &&
  octave >= PCMIDI_OCTAVE_MIN && octave <= PCMIDI_OCTAVE_MAX) {
  dbg_hid("pcmidi sysfs write octave=%d\n", octave);
  pk->pm->midi_octave = octave;
  return strlen(buf);
 }
 return -EINVAL;
}

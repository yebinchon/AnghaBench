
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
struct TYPE_2__ {int midi_channel; } ;


 int PCMIDI_CHANNEL_MAX ;
 int PCMIDI_CHANNEL_MIN ;
 int dbg_hid (char*,int) ;
 struct pk_device* hid_get_drvdata (struct hid_device*) ;
 int sprintf (char*,char*,int,int,int) ;
 struct hid_device* to_hid_device (struct device*) ;

__attribute__((used)) static ssize_t show_channel(struct device *dev,
 struct device_attribute *attr, char *buf)
{
 struct hid_device *hdev = to_hid_device(dev);
 struct pk_device *pk = hid_get_drvdata(hdev);

 dbg_hid("pcmidi sysfs read channel=%u\n", pk->pm->midi_channel);

 return sprintf(buf, "%u (min:%u, max:%u)\n", pk->pm->midi_channel,
  PCMIDI_CHANNEL_MIN, PCMIDI_CHANNEL_MAX);
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pk_device {TYPE_1__* pm; } ;
struct hid_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {unsigned int midi_channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 unsigned int PCMIDI_CHANNEL_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 struct pk_device* FUNC1 (struct hid_device*) ; 
 scalar_t__ FUNC2 (char const*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 struct hid_device* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	struct hid_device *hdev = FUNC4(dev);
	struct pk_device *pk = FUNC1(hdev);

	unsigned channel = 0;

	if (FUNC2(buf, "%u", &channel) > 0 && channel <= PCMIDI_CHANNEL_MAX) {
		FUNC0("pcmidi sysfs write channel=%u\n", channel);
		pk->pm->midi_channel = channel;
		return FUNC3(buf);
	}
	return -EINVAL;
}
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
struct TYPE_2__ {int midi_channel; } ;

/* Variables and functions */
 int PCMIDI_CHANNEL_MAX ; 
 int PCMIDI_CHANNEL_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 struct pk_device* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int) ; 
 struct hid_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
	struct device_attribute *attr, char *buf)
{
	struct hid_device *hdev = FUNC3(dev);
	struct pk_device *pk = FUNC1(hdev);

	FUNC0("pcmidi sysfs read channel=%u\n", pk->pm->midi_channel);

	return FUNC2(buf, "%u (min:%u, max:%u)\n", pk->pm->midi_channel,
		PCMIDI_CHANNEL_MIN, PCMIDI_CHANNEL_MAX);
}
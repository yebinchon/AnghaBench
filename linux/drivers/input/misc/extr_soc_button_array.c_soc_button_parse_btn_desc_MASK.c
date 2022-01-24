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
struct TYPE_2__ {int count; int /*<<< orphan*/ * elements; } ;
union acpi_object {scalar_t__ type; TYPE_1__ package; } ;
struct soc_button_info {int acpi_index; char* name; int wakeup; int autorepeat; int /*<<< orphan*/  event_code; int /*<<< orphan*/  event_type; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ ACPI_TYPE_PACKAGE ; 
 int ENODEV ; 
 int /*<<< orphan*/  EV_KEY ; 
 int /*<<< orphan*/  EV_SW ; 
 int /*<<< orphan*/  KEY_LEFTMETA ; 
 int /*<<< orphan*/  KEY_POWER ; 
 int /*<<< orphan*/  KEY_RESERVED ; 
 int /*<<< orphan*/  KEY_VOLUMEDOWN ; 
 int /*<<< orphan*/  KEY_VOLUMEUP ; 
 int /*<<< orphan*/  SW_ROTATE_LOCK ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
				     const union acpi_object *desc,
				     int collection_uid,
				     struct soc_button_info *info)
{
	int upage, usage;

	if (desc->type != ACPI_TYPE_PACKAGE ||
	    desc->package.count != 5 ||
	    /* First byte should be 1 (control) */
	    FUNC2(&desc->package.elements[0]) != 1 ||
	    /* Third byte should be collection uid */
	    FUNC2(&desc->package.elements[2]) !=
							    collection_uid) {
		FUNC0(dev, "Invalid ACPI Button Descriptor\n");
		return -ENODEV;
	}

	info->event_type = EV_KEY;
	info->acpi_index =
		FUNC2(&desc->package.elements[1]);
	upage = FUNC2(&desc->package.elements[3]);
	usage = FUNC2(&desc->package.elements[4]);

	/*
	 * The UUID: fa6bd625-9ce8-470d-a2c7-b3ca36c4282e descriptors use HID
	 * usage page and usage codes, but otherwise the device is not HID
	 * compliant: it uses one irq per button instead of generating HID
	 * input reports and some buttons should generate wakeups where as
	 * others should not, so we cannot use the HID subsystem.
	 *
	 * Luckily all devices only use a few usage page + usage combinations,
	 * so we can simply check for the known combinations here.
	 */
	if (upage == 0x01 && usage == 0x81) {
		info->name = "power";
		info->event_code = KEY_POWER;
		info->wakeup = true;
	} else if (upage == 0x01 && usage == 0xca) {
		info->name = "rotation lock switch";
		info->event_type = EV_SW;
		info->event_code = SW_ROTATE_LOCK;
	} else if (upage == 0x07 && usage == 0xe3) {
		info->name = "home";
		info->event_code = KEY_LEFTMETA;
		info->wakeup = true;
	} else if (upage == 0x0c && usage == 0xe9) {
		info->name = "volume_up";
		info->event_code = KEY_VOLUMEUP;
		info->autorepeat = true;
	} else if (upage == 0x0c && usage == 0xea) {
		info->name = "volume_down";
		info->event_code = KEY_VOLUMEDOWN;
		info->autorepeat = true;
	} else {
		FUNC1(dev, "Unknown button index %d upage %02x usage %02x, ignoring\n",
			 info->acpi_index, upage, usage);
		info->name = "unknown";
		info->event_code = KEY_RESERVED;
	}

	return 0;
}
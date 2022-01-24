#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct roccat_reader {int /*<<< orphan*/  hid; scalar_t__ exist; int /*<<< orphan*/  open; int /*<<< orphan*/  readers_lock; int /*<<< orphan*/  node; } ;
struct roccat_device {int /*<<< orphan*/  hid; scalar_t__ exist; int /*<<< orphan*/  open; int /*<<< orphan*/  readers_lock; int /*<<< orphan*/  node; } ;
struct inode {int dummy; } ;
struct file {struct roccat_reader* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  PM_HINT_NORMAL ; 
 struct roccat_reader** devices ; 
 int /*<<< orphan*/  devices_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct roccat_reader*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	unsigned int minor = FUNC2(inode);
	struct roccat_reader *reader = file->private_data;
	struct roccat_device *device;

	FUNC5(&devices_lock);

	device = devices[minor];
	if (!device) {
		FUNC6(&devices_lock);
		FUNC7("roccat device with minor %d doesn't exist\n", minor);
		return -ENODEV;
	}

	FUNC5(&device->readers_lock);
	FUNC4(&reader->node);
	FUNC6(&device->readers_lock);
	FUNC3(reader);

	if (!--device->open) {
		/* removing last reader */
		if (device->exist) {
			FUNC1(device->hid, PM_HINT_NORMAL);
			FUNC0(device->hid);
		} else {
			FUNC3(device);
		}
	}

	FUNC6(&devices_lock);

	return 0;
}
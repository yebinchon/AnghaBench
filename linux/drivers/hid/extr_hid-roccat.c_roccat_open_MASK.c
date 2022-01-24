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
struct roccat_reader {int /*<<< orphan*/  node; int /*<<< orphan*/  cbuf_start; struct roccat_device* device; } ;
struct roccat_device {int /*<<< orphan*/  readers_lock; int /*<<< orphan*/  readers; int /*<<< orphan*/  cbuf_end; int /*<<< orphan*/  open; int /*<<< orphan*/  hid; } ;
struct inode {int dummy; } ;
struct file {struct roccat_reader* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PM_HINT_FULLON ; 
 int /*<<< orphan*/  PM_HINT_NORMAL ; 
 struct roccat_device** devices ; 
 int /*<<< orphan*/  devices_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct roccat_reader*) ; 
 struct roccat_reader* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	unsigned int minor = FUNC2(inode);
	struct roccat_reader *reader;
	struct roccat_device *device;
	int error = 0;

	reader = FUNC4(sizeof(struct roccat_reader), GFP_KERNEL);
	if (!reader)
		return -ENOMEM;

	FUNC6(&devices_lock);

	device = devices[minor];

	if (!device) {
		FUNC8("roccat device with minor %d doesn't exist\n", minor);
		error = -ENODEV;
		goto exit_err_devices;
	}

	FUNC6(&device->readers_lock);

	if (!device->open++) {
		/* power on device on adding first reader */
		error = FUNC1(device->hid, PM_HINT_FULLON);
		if (error < 0) {
			--device->open;
			goto exit_err_readers;
		}

		error = FUNC0(device->hid);
		if (error < 0) {
			FUNC1(device->hid, PM_HINT_NORMAL);
			--device->open;
			goto exit_err_readers;
		}
	}

	reader->device = device;
	/* new reader doesn't get old events */
	reader->cbuf_start = device->cbuf_end;

	FUNC5(&reader->node, &device->readers);
	file->private_data = reader;

exit_err_readers:
	FUNC7(&device->readers_lock);
exit_err_devices:
	FUNC7(&devices_lock);
	if (error)
		FUNC3(reader);
	return error;
}
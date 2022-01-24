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
struct usb_interface {int dummy; } ;
struct inode {int dummy; } ;
struct hiddev_list {struct hiddev* hiddev; int /*<<< orphan*/  node; int /*<<< orphan*/  thread_lock; } ;
struct hiddev {int /*<<< orphan*/  list_lock; int /*<<< orphan*/  existancelock; struct hid_device* hid; scalar_t__ exist; int /*<<< orphan*/  open; int /*<<< orphan*/  list; } ;
struct hid_device {struct hiddev* hiddev; } ;
struct file {struct hiddev_list* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PM_HINT_FULLON ; 
 int /*<<< orphan*/  PM_HINT_NORMAL ; 
 int FUNC0 (struct hid_device*) ; 
 int FUNC1 (struct hid_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC10 (struct usb_interface*) ; 
 struct usb_interface* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct hiddev_list*) ; 
 struct hiddev_list* FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct file *file)
{
	struct hiddev_list *list;
	struct usb_interface *intf;
	struct hid_device *hid;
	struct hiddev *hiddev;
	int res;

	intf = FUNC11(FUNC2(inode));
	if (!intf)
		return -ENODEV;
	hid = FUNC10(intf);
	hiddev = hid->hiddev;

	if (!(list = FUNC13(sizeof(struct hiddev_list))))
		return -ENOMEM;
	FUNC5(&list->thread_lock);
	list->hiddev = hiddev;
	file->private_data = list;

	/*
	 * no need for locking because the USB major number
	 * is shared which usbcore guards against disconnect
	 */
	if (list->hiddev->exist) {
		if (!list->hiddev->open++) {
			res = FUNC0(hiddev->hid);
			if (res < 0)
				goto bail;
		}
	} else {
		res = -ENODEV;
		goto bail;
	}

	FUNC8(&list->hiddev->list_lock);
	FUNC3(&list->node, &hiddev->list);
	FUNC9(&list->hiddev->list_lock);

	FUNC6(&hiddev->existancelock);
	/*
	 * recheck exist with existance lock held to
	 * avoid opening a disconnected device
	 */
	if (!list->hiddev->exist) {
		res = -ENODEV;
		goto bail_unlock;
	}
	if (!list->hiddev->open++)
		if (list->hiddev->exist) {
			struct hid_device *hid = hiddev->hid;
			res = FUNC1(hid, PM_HINT_FULLON);
			if (res < 0)
				goto bail_unlock;
			res = FUNC0(hid);
			if (res < 0)
				goto bail_normal_power;
		}
	FUNC7(&hiddev->existancelock);
	return 0;
bail_normal_power:
	FUNC1(hid, PM_HINT_NORMAL);
bail_unlock:
	FUNC7(&hiddev->existancelock);

	FUNC8(&list->hiddev->list_lock);
	FUNC4(&list->node);
	FUNC9(&list->hiddev->list_lock);
bail:
	file->private_data = NULL;
	FUNC12(list);
	return res;
}
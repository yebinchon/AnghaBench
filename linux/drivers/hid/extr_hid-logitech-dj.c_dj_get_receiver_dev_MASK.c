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
struct hid_device {int dummy; } ;
struct dj_workitem {int dummy; } ;
struct dj_receiver_dev {int type; struct hid_device* hidpp; struct hid_device* mouse; struct hid_device* keyboard; int /*<<< orphan*/  last_query; int /*<<< orphan*/  list; int /*<<< orphan*/  kref; int /*<<< orphan*/  notif_fifo; int /*<<< orphan*/  lock; int /*<<< orphan*/  work; } ;
typedef  enum recvr_type { ____Placeholder_recvr_type } recvr_type ;

/* Variables and functions */
 int DJ_MAX_NUMBER_NOTIFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HID_GD_KEYBOARD ; 
 unsigned int HID_GD_MOUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  delayedwork_callback ; 
 struct dj_receiver_dev* FUNC1 (struct hid_device*,int) ; 
 int /*<<< orphan*/  dj_hdev_list ; 
 int /*<<< orphan*/  dj_hdev_list_lock ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,struct dj_receiver_dev*) ; 
 int /*<<< orphan*/  jiffies ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dj_receiver_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct dj_receiver_dev* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct dj_receiver_dev *FUNC11(struct hid_device *hdev,
						   enum recvr_type type,
						   unsigned int application,
						   bool is_hidpp)
{
	struct dj_receiver_dev *djrcv_dev;

	FUNC8(&dj_hdev_list_lock);

	djrcv_dev = FUNC1(hdev, type);
	if (!djrcv_dev) {
		djrcv_dev = FUNC6(sizeof(*djrcv_dev), GFP_KERNEL);
		if (!djrcv_dev)
			goto out;

		FUNC0(&djrcv_dev->work, delayedwork_callback);
		FUNC10(&djrcv_dev->lock);
		if (FUNC3(&djrcv_dev->notif_fifo,
			    DJ_MAX_NUMBER_NOTIFS * sizeof(struct dj_workitem),
			    GFP_KERNEL)) {
			FUNC4(djrcv_dev);
			djrcv_dev = NULL;
			goto out;
		}
		FUNC5(&djrcv_dev->kref);
		FUNC7(&djrcv_dev->list, &dj_hdev_list);
		djrcv_dev->last_query = jiffies;
		djrcv_dev->type = type;
	}

	if (application == HID_GD_KEYBOARD)
		djrcv_dev->keyboard = hdev;
	if (application == HID_GD_MOUSE)
		djrcv_dev->mouse = hdev;
	if (is_hidpp)
		djrcv_dev->hidpp = hdev;

	FUNC2(hdev, djrcv_dev);
out:
	FUNC9(&dj_hdev_list_lock);
	return djrcv_dev;
}
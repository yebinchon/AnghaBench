#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/  release; } ;
struct hid_device {int /*<<< orphan*/  ll_open_lock; int /*<<< orphan*/  driver_input_lock; int /*<<< orphan*/  debug_list_lock; int /*<<< orphan*/  debug_list; int /*<<< orphan*/  debug_wait; TYPE_1__ dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct hid_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  hid_bus_type ; 
 int /*<<< orphan*/  FUNC4 (struct hid_device*) ; 
 int /*<<< orphan*/  hid_device_release ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct hid_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

struct hid_device *FUNC10(void)
{
	struct hid_device *hdev;
	int ret = -ENOMEM;

	hdev = FUNC6(sizeof(*hdev), GFP_KERNEL);
	if (hdev == NULL)
		return FUNC0(ret);

	FUNC3(&hdev->dev);
	hdev->dev.release = hid_device_release;
	hdev->dev.bus = &hid_bus_type;
	FUNC2(&hdev->dev);

	FUNC4(hdev);

	FUNC5(&hdev->debug_wait);
	FUNC1(&hdev->debug_list);
	FUNC9(&hdev->debug_list_lock);
	FUNC8(&hdev->driver_input_lock, 1);
	FUNC7(&hdev->ll_open_lock);

	return hdev;
}
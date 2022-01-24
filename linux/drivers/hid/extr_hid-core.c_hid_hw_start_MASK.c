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
struct hid_device {TYPE_1__* ll_driver; } ;
struct TYPE_2__ {int (* start ) (struct hid_device*) ;int /*<<< orphan*/  (* stop ) (struct hid_device*) ;} ;

/* Variables and functions */
 int FUNC0 (struct hid_device*,unsigned int) ; 
 int FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*) ; 

int FUNC3(struct hid_device *hdev, unsigned int connect_mask)
{
	int error;

	error = hdev->ll_driver->start(hdev);
	if (error)
		return error;

	if (connect_mask) {
		error = FUNC0(hdev, connect_mask);
		if (error) {
			hdev->ll_driver->stop(hdev);
			return error;
		}
	}

	return 0;
}
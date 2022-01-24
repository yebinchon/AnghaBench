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
struct TYPE_2__ {int /*<<< orphan*/  (* stop ) (struct hid_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 

void FUNC2(struct hid_device *hdev)
{
	FUNC0(hdev);
	hdev->ll_driver->stop(hdev);
}
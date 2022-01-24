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
struct rmi_data {int device_flags; int /*<<< orphan*/  xport; int /*<<< orphan*/  reset_work; int /*<<< orphan*/  flags; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int RMI_DEVICE ; 
 int /*<<< orphan*/  RMI_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct rmi_data* FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hid_device *hdev)
{
	struct rmi_data *hdata = FUNC2(hdev);

	if (hdata->device_flags & RMI_DEVICE) {
		FUNC1(RMI_STARTED, &hdata->flags);
		FUNC0(&hdata->reset_work);
		FUNC4(&hdata->xport);
	}

	FUNC3(hdev);
}
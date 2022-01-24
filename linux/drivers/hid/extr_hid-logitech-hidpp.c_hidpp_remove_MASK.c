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
struct hidpp_device {int /*<<< orphan*/  send_mutex; int /*<<< orphan*/  work; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;
struct hid_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct hidpp_device* FUNC1 (struct hid_device*) ; 
 void FUNC2 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ps_attribute_group ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct hid_device *hdev)
{
	struct hidpp_device *hidpp = FUNC1(hdev);

	if (!hidpp)
		return FUNC2(hdev);

	FUNC4(&hdev->dev.kobj, &ps_attribute_group);

	FUNC2(hdev);
	FUNC0(&hidpp->work);
	FUNC3(&hidpp->send_mutex);
}
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
struct magicmouse_sc {int /*<<< orphan*/ * input; } ;
struct hid_input {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*,int) ; 
 struct magicmouse_sc* FUNC1 (struct hid_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct hid_device*) ; 

__attribute__((used)) static int FUNC3(struct hid_device *hdev,
		struct hid_input *hi)

{
	struct magicmouse_sc *msc = FUNC1(hdev);
	int ret;

	ret = FUNC2(msc->input, hdev);
	if (ret) {
		FUNC0(hdev, "magicmouse setup input failed (%d)\n", ret);
		/* clean msc->input to notify probe() of the failure */
		msc->input = NULL;
		return ret;
	}

	return 0;
}
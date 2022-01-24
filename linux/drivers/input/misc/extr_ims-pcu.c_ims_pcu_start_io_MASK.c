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
struct ims_pcu {int /*<<< orphan*/  urb_ctrl; int /*<<< orphan*/  dev; int /*<<< orphan*/  urb_in; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct ims_pcu *pcu)
{
	int error;

	error = FUNC2(pcu->urb_ctrl, GFP_KERNEL);
	if (error) {
		FUNC0(pcu->dev,
			"Failed to start control IO - usb_submit_urb failed with result: %d\n",
			error);
		return -EIO;
	}

	error = FUNC2(pcu->urb_in, GFP_KERNEL);
	if (error) {
		FUNC0(pcu->dev,
			"Failed to start IO - usb_submit_urb failed with result: %d\n",
			error);
		FUNC1(pcu->urb_ctrl);
		return -EIO;
	}

	return 0;
}
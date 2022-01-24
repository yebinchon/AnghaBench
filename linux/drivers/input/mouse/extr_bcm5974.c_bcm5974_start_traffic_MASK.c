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
struct bcm5974 {scalar_t__ bt_urb; scalar_t__ tp_urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct bcm5974*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct bcm5974 *dev)
{
	int error;

	error = FUNC0(dev, true);
	if (error) {
		FUNC1(1, "bcm5974: mode switch failed\n");
		goto err_out;
	}

	if (dev->bt_urb) {
		error = FUNC3(dev->bt_urb, GFP_KERNEL);
		if (error)
			goto err_reset_mode;
	}

	error = FUNC3(dev->tp_urb, GFP_KERNEL);
	if (error)
		goto err_kill_bt;

	return 0;

err_kill_bt:
	FUNC2(dev->bt_urb);
err_reset_mode:
	FUNC0(dev, false);
err_out:
	return error;
}
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
struct urb {int dummy; } ;
struct es2_ap_dev {struct urb** arpc_urb; TYPE_1__* usb_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NUM_ARPC_IN_URB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct urb*) ; 
 int FUNC2 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct es2_ap_dev *es2)
{
	struct urb *urb;
	int ret;
	int i;

	for (i = 0; i < NUM_ARPC_IN_URB; ++i) {
		urb = es2->arpc_urb[i];

		ret = FUNC2(urb, GFP_KERNEL);
		if (ret) {
			FUNC0(&es2->usb_dev->dev,
				"failed to submit arpc in-urb: %d\n", ret);
			goto err_kill_urbs;
		}
	}

	return 0;

err_kill_urbs:
	for (--i; i >= 0; --i) {
		urb = es2->arpc_urb[i];
		FUNC1(urb);
	}

	return ret;
}
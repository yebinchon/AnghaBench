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
struct urb {size_t transfer_buffer_length; } ;
struct TYPE_2__ {size_t size; } ;
struct udl_device {int /*<<< orphan*/  lost_pixels; TYPE_1__ urbs; } ;
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct udl_device* FUNC3 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int FUNC5 (struct urb*,int /*<<< orphan*/ ) ; 

int FUNC6(struct drm_device *dev, struct urb *urb, size_t len)
{
	struct udl_device *udl = FUNC3(dev);
	int ret;

	FUNC0(len > udl->urbs.size);

	urb->transfer_buffer_length = len; /* set to actual payload len */
	ret = FUNC5(urb, GFP_ATOMIC);
	if (ret) {
		FUNC4(urb); /* because no one else will */
		FUNC2(&udl->lost_pixels, 1);
		FUNC1("usb_submit_urb error %x\n", ret);
	}
	return ret;
}
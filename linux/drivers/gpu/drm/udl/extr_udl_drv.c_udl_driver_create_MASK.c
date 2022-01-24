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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device {int dummy; } ;
struct TYPE_3__ {struct udl_device* dev_private; } ;
struct udl_device {TYPE_1__ drm; struct usb_device* udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct udl_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  driver ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct usb_device* FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct udl_device*) ; 
 struct udl_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct udl_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*,struct udl_device*) ; 

__attribute__((used)) static struct udl_device *FUNC8(struct usb_interface *interface)
{
	struct usb_device *udev = FUNC3(interface);
	struct udl_device *udl;
	int r;

	udl = FUNC5(sizeof(*udl), GFP_KERNEL);
	if (!udl)
		return FUNC0(-ENOMEM);

	r = FUNC2(&udl->drm, &driver, &interface->dev);
	if (r) {
		FUNC4(udl);
		return FUNC0(r);
	}

	udl->udev = udev;
	udl->drm.dev_private = udl;

	r = FUNC6(udl);
	if (r) {
		FUNC1(&udl->drm);
		FUNC4(udl);
		return FUNC0(r);
	}

	FUNC7(interface, udl);
	return udl;
}
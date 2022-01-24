#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct usb_device_id {int dummy; } ;
struct TYPE_5__ {TYPE_1__* primary; } ;
struct udl_device {TYPE_2__ drm; } ;
struct TYPE_4__ {int /*<<< orphan*/  index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct udl_device*) ; 
 int FUNC2 (struct udl_device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct udl_device* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *interface,
			 const struct usb_device_id *id)
{
	int r;
	struct udl_device *udl;

	udl = FUNC5(interface);
	if (FUNC1(udl))
		return FUNC2(udl);

	r = FUNC4(&udl->drm, 0);
	if (r)
		goto err_free;

	FUNC0("Initialized udl on minor %d\n", udl->drm.primary->index);

	return 0;

err_free:
	FUNC3(&udl->drm);
	return r;
}
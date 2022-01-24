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
typedef  int u8 ;
struct gb_svc {int /*<<< orphan*/  device_id_map; int /*<<< orphan*/  ap_intf_id; } ;
struct gb_interface {int interface_id; int device_id; int /*<<< orphan*/  dev; TYPE_1__* hd; } ;
struct TYPE_2__ {struct gb_svc* svc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_SVC_DEVICE_ID_AP ; 
 scalar_t__ GB_SVC_DEVICE_ID_MAX ; 
 int /*<<< orphan*/  GB_SVC_DEVICE_ID_MIN ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int FUNC1 (struct gb_svc*,int,int) ; 
 int FUNC2 (struct gb_svc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct gb_interface *intf)
{
	struct gb_svc *svc = intf->hd->svc;
	u8 intf_id = intf->interface_id;
	u8 device_id;
	int ret;

	/* Allocate an interface device id. */
	ret = FUNC3(&svc->device_id_map,
			     GB_SVC_DEVICE_ID_MIN, GB_SVC_DEVICE_ID_MAX + 1,
			     GFP_KERNEL);
	if (ret < 0) {
		FUNC0(&intf->dev, "failed to allocate device id: %d\n", ret);
		return ret;
	}
	device_id = ret;

	ret = FUNC1(svc, intf_id, device_id);
	if (ret) {
		FUNC0(&intf->dev, "failed to set device id %u: %d\n",
			device_id, ret);
		goto err_ida_remove;
	}

	/* FIXME: Hard-coded AP device id. */
	ret = FUNC2(svc, svc->ap_intf_id, GB_SVC_DEVICE_ID_AP,
				  intf_id, device_id);
	if (ret) {
		FUNC0(&intf->dev, "failed to create route: %d\n", ret);
		goto err_svc_id_free;
	}

	intf->device_id = device_id;

	return 0;

err_svc_id_free:
	/*
	 * XXX Should we tell SVC that this id doesn't belong to interface
	 * XXX anymore.
	 */
err_ida_remove:
	FUNC4(&svc->device_id_map, device_id);

	return ret;
}
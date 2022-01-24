#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/  dma_mask; } ;
struct gb_module {TYPE_4__ dev; struct gb_host_device* hd; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; TYPE_4__* parent; } ;
struct gb_interface {TYPE_1__ dev; int /*<<< orphan*/  device_id; int /*<<< orphan*/  mode_switch_completion; int /*<<< orphan*/  mode_switch_work; int /*<<< orphan*/  mutex; int /*<<< orphan*/  manifest_descs; int /*<<< orphan*/  bundles; int /*<<< orphan*/  interface_id; struct gb_module* module; struct gb_host_device* hd; } ;
struct gb_host_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GB_INTERFACE_AUTOSUSPEND_MS ; 
 int /*<<< orphan*/  GB_INTERFACE_DEVICE_ID_BAD ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  gb_interface_mode_switch_work ; 
 int /*<<< orphan*/  greybus_bus_type ; 
 int /*<<< orphan*/  greybus_interface_type ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  interface_groups ; 
 struct gb_interface* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_interface*) ; 

struct gb_interface *FUNC10(struct gb_module *module,
					 u8 interface_id)
{
	struct gb_host_device *hd = module->hd;
	struct gb_interface *intf;

	intf = FUNC6(sizeof(*intf), GFP_KERNEL);
	if (!intf)
		return NULL;

	intf->hd = hd;		/* XXX refcount? */
	intf->module = module;
	intf->interface_id = interface_id;
	FUNC0(&intf->bundles);
	FUNC0(&intf->manifest_descs);
	FUNC7(&intf->mutex);
	FUNC1(&intf->mode_switch_work, gb_interface_mode_switch_work);
	FUNC5(&intf->mode_switch_completion);

	/* Invalid device id to start with */
	intf->device_id = GB_INTERFACE_DEVICE_ID_BAD;

	intf->dev.parent = &module->dev;
	intf->dev.bus = &greybus_bus_type;
	intf->dev.type = &greybus_interface_type;
	intf->dev.groups = interface_groups;
	intf->dev.dma_mask = module->dev.dma_mask;
	FUNC4(&intf->dev);
	FUNC3(&intf->dev, "%s.%u", FUNC2(&module->dev),
		     interface_id);

	FUNC8(&intf->dev,
					 GB_INTERFACE_AUTOSUSPEND_MS);

	FUNC9(intf);

	return intf;
}
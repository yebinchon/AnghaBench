#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_7__ {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; TYPE_1__* parent; } ;
struct gb_module {size_t num_interfaces; TYPE_2__ dev; struct gb_interface** interfaces; scalar_t__ module_id; struct gb_host_device* hd; } ;
struct gb_interface {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  dma_mask; } ;
struct gb_host_device {int /*<<< orphan*/  bus_id; TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 struct gb_interface* FUNC3 (struct gb_module*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_interface*) ; 
 int /*<<< orphan*/  greybus_bus_type ; 
 int /*<<< orphan*/  greybus_module_type ; 
 int /*<<< orphan*/  interfaces ; 
 struct gb_module* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  module_groups ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_module*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_module*) ; 

struct gb_module *FUNC9(struct gb_host_device *hd, u8 module_id,
				   size_t num_interfaces)
{
	struct gb_interface *intf;
	struct gb_module *module;
	int i;

	module = FUNC5(FUNC7(module, interfaces, num_interfaces),
			 GFP_KERNEL);
	if (!module)
		return NULL;

	module->hd = hd;
	module->module_id = module_id;
	module->num_interfaces = num_interfaces;

	module->dev.parent = &hd->dev;
	module->dev.bus = &greybus_bus_type;
	module->dev.type = &greybus_module_type;
	module->dev.groups = module_groups;
	module->dev.dma_mask = hd->dev.dma_mask;
	FUNC2(&module->dev);
	FUNC1(&module->dev, "%d-%u", hd->bus_id, module_id);

	FUNC8(module);

	for (i = 0; i < num_interfaces; ++i) {
		intf = FUNC3(module, module_id + i);
		if (!intf) {
			FUNC0(&module->dev, "failed to create interface %u\n",
				module_id + i);
			goto err_put_interfaces;
		}
		module->interfaces[i] = intf;
	}

	return module;

err_put_interfaces:
	for (--i; i >= 0; --i)
		FUNC4(module->interfaces[i]);

	FUNC6(&module->dev);

	return NULL;
}
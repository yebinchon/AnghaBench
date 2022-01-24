#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct TYPE_6__ {int /*<<< orphan*/  dma_mask; } ;
struct gb_interface {int /*<<< orphan*/  bundles; TYPE_3__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; TYPE_3__* parent; } ;
struct gb_bundle {int /*<<< orphan*/  links; TYPE_1__ dev; int /*<<< orphan*/  connections; scalar_t__ class; scalar_t__ id; struct gb_interface* intf; } ;

/* Variables and functions */
 scalar_t__ BUNDLE_ID_NONE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bundle_groups ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (struct gb_interface*,scalar_t__) ; 
 int /*<<< orphan*/  greybus_bundle_type ; 
 int /*<<< orphan*/  greybus_bus_type ; 
 struct gb_bundle* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_bundle*) ; 

struct gb_bundle *FUNC9(struct gb_interface *intf, u8 bundle_id,
				   u8 class)
{
	struct gb_bundle *bundle;

	if (bundle_id == BUNDLE_ID_NONE) {
		FUNC1(&intf->dev, "can't use bundle id %u\n", bundle_id);
		return NULL;
	}

	/*
	 * Reject any attempt to reuse a bundle id.  We initialize
	 * these serially, so there's no need to worry about keeping
	 * the interface bundle list locked here.
	 */
	if (FUNC5(intf, bundle_id)) {
		FUNC1(&intf->dev, "duplicate bundle id %u\n", bundle_id);
		return NULL;
	}

	bundle = FUNC6(sizeof(*bundle), GFP_KERNEL);
	if (!bundle)
		return NULL;

	bundle->intf = intf;
	bundle->id = bundle_id;
	bundle->class = class;
	FUNC0(&bundle->connections);

	bundle->dev.parent = &intf->dev;
	bundle->dev.bus = &greybus_bus_type;
	bundle->dev.type = &greybus_bundle_type;
	bundle->dev.groups = bundle_groups;
	bundle->dev.dma_mask = intf->dev.dma_mask;
	FUNC4(&bundle->dev);
	FUNC3(&bundle->dev, "%s.%d", FUNC2(&intf->dev), bundle_id);

	FUNC7(&bundle->links, &intf->bundles);

	FUNC8(bundle);

	return bundle;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * release; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; struct device* parent; } ;
struct mcb_bus {int bus_nr; TYPE_1__ dev; int /*<<< orphan*/  carrier; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mcb_bus* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mcb_bus*) ; 
 struct mcb_bus* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcb_bus_type ; 
 int /*<<< orphan*/  mcb_carrier_device_type ; 
 int /*<<< orphan*/  mcb_free_bus ; 
 int /*<<< orphan*/  mcb_ida ; 
 int /*<<< orphan*/  FUNC8 (struct device*) ; 

struct mcb_bus *FUNC9(struct device *carrier)
{
	struct mcb_bus *bus;
	int bus_nr;
	int rc;

	bus = FUNC7(sizeof(struct mcb_bus), GFP_KERNEL);
	if (!bus)
		return FUNC0(-ENOMEM);

	bus_nr = FUNC5(&mcb_ida, 0, 0, GFP_KERNEL);
	if (bus_nr < 0) {
		rc = bus_nr;
		goto err_free;
	}

	bus->bus_nr = bus_nr;
	bus->carrier = FUNC4(carrier);

	FUNC3(&bus->dev);
	bus->dev.parent = carrier;
	bus->dev.bus = &mcb_bus_type;
	bus->dev.type = &mcb_carrier_device_type;
	bus->dev.release = &mcb_free_bus;

	FUNC1(&bus->dev, "mcb:%d", bus_nr);
	rc = FUNC2(&bus->dev);
	if (rc)
		goto err_free;

	return bus;
err_free:
	FUNC8(carrier);
	FUNC6(bus);
	return FUNC0(rc);
}
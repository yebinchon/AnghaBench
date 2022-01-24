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
struct TYPE_6__ {int /*<<< orphan*/  dma_mask; } ;
struct gb_interface {TYPE_3__ dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_mask; int /*<<< orphan*/  groups; int /*<<< orphan*/ * type; int /*<<< orphan*/ * bus; TYPE_3__* parent; } ;
struct gb_control {struct gb_connection* connection; TYPE_1__ dev; struct gb_interface* intf; } ;
struct gb_connection {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct gb_control* FUNC0 (struct gb_connection*) ; 
 struct gb_control* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct gb_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct gb_connection*) ; 
 int /*<<< orphan*/  control_groups ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 struct gb_connection* FUNC8 (struct gb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (struct gb_connection*,struct gb_control*) ; 
 int /*<<< orphan*/  greybus_bus_type ; 
 int /*<<< orphan*/  greybus_control_type ; 
 int /*<<< orphan*/  FUNC10 (struct gb_control*) ; 
 struct gb_control* FUNC11 (int,int /*<<< orphan*/ ) ; 

struct gb_control *FUNC12(struct gb_interface *intf)
{
	struct gb_connection *connection;
	struct gb_control *control;

	control = FUNC11(sizeof(*control), GFP_KERNEL);
	if (!control)
		return FUNC1(-ENOMEM);

	control->intf = intf;

	connection = FUNC8(intf);
	if (FUNC2(connection)) {
		FUNC4(&intf->dev,
			"failed to create control connection: %ld\n",
			FUNC3(connection));
		FUNC10(control);
		return FUNC0(connection);
	}

	control->connection = connection;

	control->dev.parent = &intf->dev;
	control->dev.bus = &greybus_bus_type;
	control->dev.type = &greybus_control_type;
	control->dev.groups = control_groups;
	control->dev.dma_mask = intf->dev.dma_mask;
	FUNC7(&control->dev);
	FUNC6(&control->dev, "%s.ctrl", FUNC5(&intf->dev));

	FUNC9(control->connection, control);

	return control;
}
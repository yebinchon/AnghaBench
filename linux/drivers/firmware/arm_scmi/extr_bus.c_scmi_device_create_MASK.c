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
struct TYPE_4__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * bus; struct device_node* of_node; struct device* parent; } ;
struct scmi_device {int id; int protocol_id; TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scmi_device*) ; 
 struct scmi_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  scmi_bus_id ; 
 int /*<<< orphan*/  scmi_bus_type ; 
 int /*<<< orphan*/  scmi_device_release ; 

struct scmi_device *
FUNC7(struct device_node *np, struct device *parent, int protocol)
{
	int id, retval;
	struct scmi_device *scmi_dev;

	scmi_dev = FUNC5(sizeof(*scmi_dev), GFP_KERNEL);
	if (!scmi_dev)
		return NULL;

	id = FUNC2(&scmi_bus_id, 1, 0, GFP_KERNEL);
	if (id < 0)
		goto free_mem;

	scmi_dev->id = id;
	scmi_dev->protocol_id = protocol;
	scmi_dev->dev.parent = parent;
	scmi_dev->dev.of_node = np;
	scmi_dev->dev.bus = &scmi_bus_type;
	scmi_dev->dev.release = scmi_device_release;
	FUNC0(&scmi_dev->dev, "scmi_dev.%d", id);

	retval = FUNC1(&scmi_dev->dev);
	if (retval)
		goto put_dev;

	return scmi_dev;
put_dev:
	FUNC6(&scmi_dev->dev);
	FUNC3(&scmi_bus_id, id);
free_mem:
	FUNC4(scmi_dev);
	return NULL;
}
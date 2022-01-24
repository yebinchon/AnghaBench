#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* parent; } ;
struct fpga_bridge {TYPE_3__ dev; int /*<<< orphan*/  mutex; int /*<<< orphan*/ * info; } ;
struct TYPE_6__ {TYPE_1__* driver; } ;
struct TYPE_5__ {int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

void FUNC4(struct fpga_bridge *bridge)
{
	FUNC0(&bridge->dev, "put\n");

	bridge->info = NULL;
	FUNC1(bridge->dev.parent->driver->owner);
	FUNC2(&bridge->mutex);
	FUNC3(&bridge->dev);
}
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
struct nvkm_i2c_bus {int enabled; int /*<<< orphan*/  mutex; TYPE_1__* func; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* init ) (struct nvkm_i2c_bus*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_bus*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_i2c_bus*) ; 

void
FUNC4(struct nvkm_i2c_bus *bus)
{
	FUNC0(bus, "init");
	if (bus->func->init)
		bus->func->init(bus);

	FUNC1(&bus->mutex);
	bus->enabled = true;
	FUNC2(&bus->mutex);
}
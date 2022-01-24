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
struct TYPE_2__ {struct nvkm_i2c_bus* algo_data; } ;
struct nvkm_i2c_bus {TYPE_1__ i2c; int /*<<< orphan*/  head; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_i2c_bus*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_i2c_bus*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct nvkm_i2c_bus **pbus)
{
	struct nvkm_i2c_bus *bus = *pbus;
	if (bus && !FUNC1(!bus->func)) {
		FUNC0(bus, "dtor");
		FUNC4(&bus->head);
		FUNC2(&bus->i2c);
		FUNC3(bus->i2c.algo_data);
		FUNC3(*pbus);
		*pbus = NULL;
	}
}
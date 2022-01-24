#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvkm_device {int dummy; } ;
struct nvkm_bus_func {int dummy; } ;
struct nvkm_bus {struct nvkm_bus_func const* func; int /*<<< orphan*/  subdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_bus* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvkm_bus ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,int /*<<< orphan*/ *) ; 

int
FUNC2(const struct nvkm_bus_func *func, struct nvkm_device *device,
	      int index, struct nvkm_bus **pbus)
{
	struct nvkm_bus *bus;
	if (!(bus = *pbus = FUNC0(sizeof(*bus), GFP_KERNEL)))
		return -ENOMEM;
	FUNC1(&nvkm_bus, device, index, &bus->subdev);
	bus->func = func;
	return 0;
}
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
struct nvkm_engine_func {int dummy; } ;
struct nvkm_engine {int /*<<< orphan*/  lock; int /*<<< orphan*/  subdev; struct nvkm_engine_func const* func; } ;
struct nvkm_device {int /*<<< orphan*/  cfgopt; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  nvkm_engine_func ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nvkm_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * nvkm_subdev_name ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(const struct nvkm_engine_func *func,
		 struct nvkm_device *device, int index, bool enable,
		 struct nvkm_engine *engine)
{
	FUNC2(&nvkm_engine_func, device, index, &engine->subdev);
	engine->func = func;

	if (!FUNC0(device->cfgopt, nvkm_subdev_name[index], enable)) {
		FUNC1(&engine->subdev, "disabled\n");
		return -ENODEV;
	}

	FUNC3(&engine->lock);
	return 0;
}
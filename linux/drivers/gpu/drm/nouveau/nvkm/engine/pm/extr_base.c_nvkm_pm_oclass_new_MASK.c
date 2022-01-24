#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_pm {TYPE_2__ engine; struct nvkm_object* perfmon; } ;
struct nvkm_oclass {int /*<<< orphan*/  engine; } ;
struct nvkm_object {int dummy; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nvkm_pm*,struct nvkm_oclass const*,void*,int /*<<< orphan*/ ,struct nvkm_object**) ; 
 struct nvkm_pm* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct nvkm_device *device, const struct nvkm_oclass *oclass,
		   void *data, u32 size, struct nvkm_object **pobject)
{
	struct nvkm_pm *pm = FUNC3(oclass->engine);
	int ret;

	ret = FUNC2(pm, oclass, data, size, pobject);
	if (ret)
		return ret;

	FUNC0(&pm->engine.subdev.mutex);
	if (pm->perfmon == NULL)
		pm->perfmon = *pobject;
	ret = (pm->perfmon == *pobject) ? 0 : -EBUSY;
	FUNC1(&pm->engine.subdev.mutex);
	return ret;
}
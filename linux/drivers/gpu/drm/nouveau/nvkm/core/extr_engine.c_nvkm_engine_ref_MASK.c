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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct nvkm_engine {int usecount; TYPE_1__ subdev; } ;

/* Variables and functions */
 struct nvkm_engine* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 

struct nvkm_engine *
FUNC4(struct nvkm_engine *engine)
{
	if (engine) {
		FUNC1(&engine->subdev.mutex);
		if (++engine->usecount == 1) {
			int ret = FUNC3(&engine->subdev);
			if (ret) {
				engine->usecount--;
				FUNC2(&engine->subdev.mutex);
				return FUNC0(ret);
			}
		}
		FUNC2(&engine->subdev.mutex);
	}
	return engine;
}
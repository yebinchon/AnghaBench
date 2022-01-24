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
struct nvkm_tags {int /*<<< orphan*/  mn; int /*<<< orphan*/  refcount; } ;
struct nvkm_memory {int /*<<< orphan*/ * tags; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct nvkm_fb {TYPE_1__ subdev; int /*<<< orphan*/  tags; } ;
struct nvkm_device {struct nvkm_fb* fb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(struct nvkm_memory *memory, struct nvkm_device *device,
		     struct nvkm_tags **ptags)
{
	struct nvkm_fb *fb = device->fb;
	struct nvkm_tags *tags = *ptags;
	if (tags) {
		FUNC1(&fb->subdev.mutex);
		if (FUNC4(&tags->refcount)) {
			FUNC3(&fb->tags, &tags->mn);
			FUNC0(memory->tags);
			memory->tags = NULL;
		}
		FUNC2(&fb->subdev.mutex);
		*ptags = NULL;
	}
}
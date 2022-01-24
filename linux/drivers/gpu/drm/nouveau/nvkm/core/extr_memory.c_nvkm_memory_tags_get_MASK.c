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
typedef  scalar_t__ u32 ;
struct nvkm_tags {int /*<<< orphan*/  refcount; TYPE_2__* mn; } ;
struct nvkm_memory {struct nvkm_tags* tags; } ;
struct TYPE_3__ {int /*<<< orphan*/  mutex; } ;
struct nvkm_fb {TYPE_1__ subdev; int /*<<< orphan*/  tags; } ;
struct nvkm_device {struct nvkm_fb* fb; } ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ offset; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_tags* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

int
FUNC6(struct nvkm_memory *memory, struct nvkm_device *device,
		     u32 nr, void (*clr)(struct nvkm_device *, u32, u32),
		     struct nvkm_tags **ptags)
{
	struct nvkm_fb *fb = device->fb;
	struct nvkm_tags *tags;

	FUNC1(&fb->subdev.mutex);
	if ((tags = memory->tags)) {
		/* If comptags exist for the memory, but a different amount
		 * than requested, the buffer is being mapped with settings
		 * that are incompatible with existing mappings.
		 */
		if (tags->mn && tags->mn->length != nr) {
			FUNC2(&fb->subdev.mutex);
			return -EINVAL;
		}

		FUNC4(&tags->refcount);
		FUNC2(&fb->subdev.mutex);
		*ptags = tags;
		return 0;
	}

	if (!(tags = FUNC0(sizeof(*tags), GFP_KERNEL))) {
		FUNC2(&fb->subdev.mutex);
		return -ENOMEM;
	}

	if (!FUNC3(&fb->tags, 0, 1, nr, nr, 1, &tags->mn)) {
		if (clr)
			clr(device, tags->mn->offset, tags->mn->length);
	} else {
		/* Failure to allocate HW comptags is not an error, the
		 * caller should fall back to an uncompressed map.
		 *
		 * As memory can be mapped in multiple places, we still
		 * need to track the allocation failure and ensure that
		 * any additional mappings remain uncompressed.
		 *
		 * This is handled by returning an empty nvkm_tags.
		 */
		tags->mn = NULL;
	}

	FUNC5(&tags->refcount, 1);
	FUNC2(&fb->subdev.mutex);
	*ptags = tags;
	return 0;
}
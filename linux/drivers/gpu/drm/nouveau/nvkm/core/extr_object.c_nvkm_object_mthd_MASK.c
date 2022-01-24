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
typedef  int /*<<< orphan*/  u32 ;
struct nvkm_object {TYPE_1__* func; } ;
struct TYPE_2__ {int (* mthd ) (struct nvkm_object*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (int (*) (struct nvkm_object*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ )) ; 
 int FUNC1 (struct nvkm_object*,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

int
FUNC2(struct nvkm_object *object, u32 mthd, void *data, u32 size)
{
	if (FUNC0(object->func->mthd))
		return object->func->mthd(object, mthd, data, size);
	return -ENODEV;
}
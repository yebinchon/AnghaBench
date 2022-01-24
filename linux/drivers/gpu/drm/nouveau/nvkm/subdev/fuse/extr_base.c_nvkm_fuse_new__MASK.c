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
struct nvkm_fuse_func {int dummy; } ;
struct nvkm_fuse {int /*<<< orphan*/  lock; struct nvkm_fuse_func const* func; int /*<<< orphan*/  subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct nvkm_fuse* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvkm_fuse ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct nvkm_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(const struct nvkm_fuse_func *func, struct nvkm_device *device,
	       int index, struct nvkm_fuse **pfuse)
{
	struct nvkm_fuse *fuse;
	if (!(fuse = *pfuse = FUNC0(sizeof(*fuse), GFP_KERNEL)))
		return -ENOMEM;
	FUNC1(&nvkm_fuse, device, index, &fuse->subdev);
	fuse->func = func;
	FUNC2(&fuse->lock);
	return 0;
}
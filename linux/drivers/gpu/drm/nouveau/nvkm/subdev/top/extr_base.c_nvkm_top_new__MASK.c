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
struct nvkm_top_func {int dummy; } ;
struct nvkm_top {int /*<<< orphan*/  device; struct nvkm_top_func const* func; int /*<<< orphan*/  subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvkm_top* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nvkm_device*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvkm_top ; 

int
FUNC3(const struct nvkm_top_func *func, struct nvkm_device *device,
	      int index, struct nvkm_top **ptop)
{
	struct nvkm_top *top;
	if (!(top = *ptop = FUNC1(sizeof(*top), GFP_KERNEL)))
		return -ENOMEM;
	FUNC2(&nvkm_top, device, index, &top->subdev);
	top->func = func;
	FUNC0(&top->device);
	return 0;
}
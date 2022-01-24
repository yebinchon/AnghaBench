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
struct nvkm_subdev {int /*<<< orphan*/  device; } ;
struct nvkm_devinit {TYPE_1__* func; } ;
struct TYPE_2__ {void* (* dtor ) (struct nvkm_devinit*) ;} ;

/* Variables and functions */
 struct nvkm_devinit* FUNC0 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (struct nvkm_devinit*) ; 

__attribute__((used)) static void *
FUNC3(struct nvkm_subdev *subdev)
{
	struct nvkm_devinit *init = FUNC0(subdev);
	void *data = init;

	if (init->func->dtor)
		data = init->func->dtor(init);

	/* lock crtc regs */
	FUNC1(subdev->device, true);
	return data;
}
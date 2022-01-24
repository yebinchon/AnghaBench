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
struct nvkm_bar {TYPE_1__* func; } ;
struct TYPE_2__ {void* (* dtor ) (struct nvkm_bar*) ;} ;

/* Variables and functions */
 struct nvkm_bar* FUNC0 (struct nvkm_subdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct nvkm_bar*) ; 

__attribute__((used)) static void *
FUNC3(struct nvkm_subdev *subdev)
{
	struct nvkm_bar *bar = FUNC0(subdev);
	FUNC1(subdev->device);
	return bar->func->dtor(bar);
}
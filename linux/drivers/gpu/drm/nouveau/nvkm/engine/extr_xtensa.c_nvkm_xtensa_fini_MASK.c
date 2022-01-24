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
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nvkm_xtensa {int /*<<< orphan*/  gpu_fw; scalar_t__ addr; TYPE_2__ engine; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,scalar_t__ const,int /*<<< orphan*/ ) ; 
 struct nvkm_xtensa* FUNC2 (struct nvkm_engine*) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_engine *engine, bool suspend)
{
	struct nvkm_xtensa *xtensa = FUNC2(engine);
	struct nvkm_device *device = xtensa->engine.subdev.device;
	const u32 base = xtensa->addr;

	FUNC1(device, base + 0xd84, 0); /* INTR_EN */
	FUNC1(device, base + 0xd94, 0); /* FIFO_CTRL */

	if (!suspend)
		FUNC0(&xtensa->gpu_fw);
	return 0;
}
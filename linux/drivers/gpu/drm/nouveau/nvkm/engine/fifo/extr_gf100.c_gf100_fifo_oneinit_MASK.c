#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct nvkm_vmm {int dummy; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  bar; int /*<<< orphan*/  mem; } ;
struct TYPE_7__ {int /*<<< orphan*/  wait; int /*<<< orphan*/ * mem; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;
struct gf100_fifo {TYPE_4__ user; TYPE_3__ runlist; int /*<<< orphan*/  pbdma_nr; TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_MEM_TARGET_INST ; 
 struct gf100_fifo* FUNC0 (struct nvkm_fifo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nvkm_vmm* FUNC3 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_subdev*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvkm_vmm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct nvkm_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int) ; 
 int FUNC9 (struct nvkm_vmm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static int
FUNC11(struct nvkm_fifo *base)
{
	struct gf100_fifo *fifo = FUNC0(base);
	struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_vmm *bar = FUNC3(device);
	int ret;

	/* Determine number of PBDMAs by checking valid enable bits. */
	FUNC10(device, 0x002204, 0xffffffff);
	fifo->pbdma_nr = FUNC1(FUNC8(device, 0x002204));
	FUNC4(subdev, "%d PBDMA(s)\n", fifo->pbdma_nr);


	ret = FUNC6(device, NVKM_MEM_TARGET_INST, 0x1000, 0x1000,
			      false, &fifo->runlist.mem[0]);
	if (ret)
		return ret;

	ret = FUNC6(device, NVKM_MEM_TARGET_INST, 0x1000, 0x1000,
			      false, &fifo->runlist.mem[1]);
	if (ret)
		return ret;

	FUNC2(&fifo->runlist.wait);

	ret = FUNC6(device, NVKM_MEM_TARGET_INST, 128 * 0x1000,
			      0x1000, false, &fifo->user.mem);
	if (ret)
		return ret;

	ret = FUNC9(bar, 12, FUNC7(fifo->user.mem),
			   &fifo->user.bar);
	if (ret)
		return ret;

	return FUNC5(fifo->user.mem, 0, bar, fifo->user.bar, NULL, 0);
}
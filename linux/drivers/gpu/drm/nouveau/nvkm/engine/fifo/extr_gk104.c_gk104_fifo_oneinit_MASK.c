#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_vmm {int dummy; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  bar; int /*<<< orphan*/  mem; } ;
struct TYPE_9__ {struct nvkm_subdev subdev; } ;
struct TYPE_15__ {int nr; TYPE_1__ engine; } ;
struct gk104_fifo {int pbdma_nr; int engine_nr; int runlist_nr; TYPE_8__ user; TYPE_7__ base; TYPE_6__* runlist; TYPE_5__* func; TYPE_3__* engine; } ;
typedef  enum nvkm_devidx { ____Placeholder_nvkm_devidx } nvkm_devidx ;
struct TYPE_14__ {int engm; int /*<<< orphan*/  chan; int /*<<< orphan*/  cgrp; int /*<<< orphan*/  wait; int /*<<< orphan*/ * mem; } ;
struct TYPE_13__ {TYPE_4__* runlist; TYPE_2__* pbdma; } ;
struct TYPE_12__ {int size; } ;
struct TYPE_11__ {int runl; int pbid; int /*<<< orphan*/  engine; } ;
struct TYPE_10__ {int (* nr ) (struct gk104_fifo*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NVKM_MEM_TARGET_INST ; 
 struct gk104_fifo* FUNC2 (struct nvkm_fifo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 void* FUNC6 (int,int) ; 
 struct nvkm_vmm* FUNC7 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_subdev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_device*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct nvkm_vmm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nvkm_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/ * nvkm_subdev_name ; 
 int FUNC14 (struct nvkm_device*,int /*<<< orphan*/ ,int*,int*) ; 
 int FUNC15 (struct nvkm_vmm*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC16 (struct gk104_fifo*) ; 

__attribute__((used)) static int
FUNC17(struct nvkm_fifo *base)
{
	struct gk104_fifo *fifo = FUNC2(base);
	struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_vmm *bar = FUNC7(device);
	int engn, runl, pbid, ret, i, j;
	enum nvkm_devidx engidx;
	u32 *map;

	fifo->pbdma_nr = fifo->func->pbdma->nr(fifo);
	FUNC8(subdev, "%d PBDMA(s)\n", fifo->pbdma_nr);

	/* Read PBDMA->runlist(s) mapping from HW. */
	if (!(map = FUNC4(fifo->pbdma_nr, sizeof(*map), GFP_KERNEL)))
		return -ENOMEM;

	for (i = 0; i < fifo->pbdma_nr; i++)
		map[i] = FUNC13(device, 0x002390 + (i * 0x04));

	/* Determine runlist configuration from topology device info. */
	i = 0;
	while ((int)(engidx = FUNC14(device, i++, &runl, &engn)) >= 0) {
		/* Determine which PBDMA handles requests for this engine. */
		for (j = 0, pbid = -1; j < fifo->pbdma_nr; j++) {
			if (map[j] & (1 << runl)) {
				pbid = j;
				break;
			}
		}

		FUNC8(subdev, "engine %2d: runlist %2d pbdma %2d (%s)\n",
			   engn, runl, pbid, nvkm_subdev_name[engidx]);

		fifo->engine[engn].engine = FUNC9(device, engidx);
		fifo->engine[engn].runl = runl;
		fifo->engine[engn].pbid = pbid;
		fifo->engine_nr = FUNC6(fifo->engine_nr, engn + 1);
		fifo->runlist[runl].engm |= 1 << engn;
		fifo->runlist_nr = FUNC6(fifo->runlist_nr, runl + 1);
	}

	FUNC5(map);

	for (i = 0; i < fifo->runlist_nr; i++) {
		for (j = 0; j < FUNC0(fifo->runlist[i].mem); j++) {
			ret = FUNC11(device, NVKM_MEM_TARGET_INST,
					      fifo->base.nr * 2/* TSG+chan */ *
					      fifo->func->runlist->size,
					      0x1000, false,
					      &fifo->runlist[i].mem[j]);
			if (ret)
				return ret;
		}

		FUNC3(&fifo->runlist[i].wait);
		FUNC1(&fifo->runlist[i].cgrp);
		FUNC1(&fifo->runlist[i].chan);
	}

	ret = FUNC11(device, NVKM_MEM_TARGET_INST,
			      fifo->base.nr * 0x200, 0x1000, true,
			      &fifo->user.mem);
	if (ret)
		return ret;

	ret = FUNC15(bar, 12, FUNC12(fifo->user.mem),
			   &fifo->user.bar);
	if (ret)
		return ret;

	return FUNC10(fifo->user.mem, 0, bar, fifo->user.bar, NULL, 0);
}
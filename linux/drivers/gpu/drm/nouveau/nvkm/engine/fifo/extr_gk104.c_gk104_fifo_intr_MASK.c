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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_8__ {TYPE_1__ engine; } ;
struct gk104_fifo {TYPE_4__ base; TYPE_3__* func; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* fault ) (TYPE_4__*,int) ;} ;
struct TYPE_7__ {TYPE_2__ intr; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct gk104_fifo* FUNC1 (struct nvkm_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct gk104_fifo*) ; 
 int /*<<< orphan*/  FUNC3 (struct gk104_fifo*) ; 
 int /*<<< orphan*/  FUNC4 (struct gk104_fifo*) ; 
 int /*<<< orphan*/  FUNC5 (struct gk104_fifo*) ; 
 int /*<<< orphan*/  FUNC6 (struct gk104_fifo*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gk104_fifo*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct gk104_fifo*) ; 
 int /*<<< orphan*/  FUNC9 (struct gk104_fifo*) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_subdev*,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_device*,int,int,int) ; 
 int FUNC12 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int) ; 

__attribute__((used)) static void
FUNC15(struct nvkm_fifo *base)
{
	struct gk104_fifo *fifo = FUNC1(base);
	struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 mask = FUNC12(device, 0x002140);
	u32 stat = FUNC12(device, 0x002100) & mask;

	if (stat & 0x00000001) {
		FUNC2(fifo);
		FUNC13(device, 0x002100, 0x00000001);
		stat &= ~0x00000001;
	}

	if (stat & 0x00000010) {
		FUNC10(subdev, "PIO_ERROR\n");
		FUNC13(device, 0x002100, 0x00000010);
		stat &= ~0x00000010;
	}

	if (stat & 0x00000100) {
		FUNC9(fifo);
		FUNC13(device, 0x002100, 0x00000100);
		stat &= ~0x00000100;
	}

	if (stat & 0x00010000) {
		FUNC3(fifo);
		FUNC13(device, 0x002100, 0x00010000);
		stat &= ~0x00010000;
	}

	if (stat & 0x00800000) {
		FUNC10(subdev, "FB_FLUSH_TIMEOUT\n");
		FUNC13(device, 0x002100, 0x00800000);
		stat &= ~0x00800000;
	}

	if (stat & 0x01000000) {
		FUNC10(subdev, "LB_ERROR\n");
		FUNC13(device, 0x002100, 0x01000000);
		stat &= ~0x01000000;
	}

	if (stat & 0x08000000) {
		FUNC4(fifo);
		FUNC13(device, 0x002100, 0x08000000);
		stat &= ~0x08000000;
	}

	if (stat & 0x10000000) {
		u32 mask = FUNC12(device, 0x00259c);
		while (mask) {
			u32 unit = FUNC0(mask);
			fifo->func->intr.fault(&fifo->base, unit);
			FUNC13(device, 0x00259c, (1 << unit));
			mask &= ~(1 << unit);
		}
		stat &= ~0x10000000;
	}

	if (stat & 0x20000000) {
		u32 mask = FUNC12(device, 0x0025a0);
		while (mask) {
			u32 unit = FUNC0(mask);
			FUNC6(fifo, unit);
			FUNC7(fifo, unit);
			FUNC13(device, 0x0025a0, (1 << unit));
			mask &= ~(1 << unit);
		}
		stat &= ~0x20000000;
	}

	if (stat & 0x40000000) {
		FUNC8(fifo);
		stat &= ~0x40000000;
	}

	if (stat & 0x80000000) {
		FUNC13(device, 0x002100, 0x80000000);
		FUNC5(fifo);
		stat &= ~0x80000000;
	}

	if (stat) {
		FUNC10(subdev, "INTR %08x\n", stat);
		FUNC11(device, 0x002140, stat, 0x00000000);
		FUNC13(device, 0x002100, stat);
	}
}
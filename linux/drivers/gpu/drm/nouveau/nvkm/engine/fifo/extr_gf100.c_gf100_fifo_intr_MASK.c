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
typedef  int u32 ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_subdev subdev; } ;
struct TYPE_4__ {TYPE_1__ engine; } ;
struct gf100_fifo {TYPE_2__ base; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 struct gf100_fifo* FUNC1 (struct nvkm_fifo*) ; 
 int /*<<< orphan*/  FUNC2 (struct gf100_fifo*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gf100_fifo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gf100_fifo*) ; 
 int /*<<< orphan*/  FUNC6 (struct gf100_fifo*) ; 
 int /*<<< orphan*/  FUNC7 (struct nvkm_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct nvkm_device*,int,int,int) ; 
 int FUNC9 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct nvkm_subdev*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC12(struct nvkm_fifo *base)
{
	struct gf100_fifo *fifo = FUNC1(base);
	struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	u32 mask = FUNC9(device, 0x002140);
	u32 stat = FUNC9(device, 0x002100) & mask;

	if (stat & 0x00000001) {
		u32 intr = FUNC9(device, 0x00252c);
		FUNC10(subdev, "INTR 00000001: %08x\n", intr);
		FUNC11(device, 0x002100, 0x00000001);
		stat &= ~0x00000001;
	}

	if (stat & 0x00000100) {
		FUNC6(fifo);
		FUNC11(device, 0x002100, 0x00000100);
		stat &= ~0x00000100;
	}

	if (stat & 0x00010000) {
		u32 intr = FUNC9(device, 0x00256c);
		FUNC10(subdev, "INTR 00010000: %08x\n", intr);
		FUNC11(device, 0x002100, 0x00010000);
		stat &= ~0x00010000;
	}

	if (stat & 0x01000000) {
		u32 intr = FUNC9(device, 0x00258c);
		FUNC10(subdev, "INTR 01000000: %08x\n", intr);
		FUNC11(device, 0x002100, 0x01000000);
		stat &= ~0x01000000;
	}

	if (stat & 0x10000000) {
		u32 mask = FUNC9(device, 0x00259c);
		while (mask) {
			u32 unit = FUNC0(mask);
			FUNC3(&fifo->base, unit);
			FUNC11(device, 0x00259c, (1 << unit));
			mask &= ~(1 << unit);
		}
		stat &= ~0x10000000;
	}

	if (stat & 0x20000000) {
		u32 mask = FUNC9(device, 0x0025a0);
		while (mask) {
			u32 unit = FUNC0(mask);
			FUNC4(fifo, unit);
			FUNC11(device, 0x0025a0, (1 << unit));
			mask &= ~(1 << unit);
		}
		stat &= ~0x20000000;
	}

	if (stat & 0x40000000) {
		FUNC5(fifo);
		stat &= ~0x40000000;
	}

	if (stat & 0x80000000) {
		FUNC2(fifo);
		stat &= ~0x80000000;
	}

	if (stat) {
		FUNC7(subdev, "INTR %08x\n", stat);
		FUNC8(device, 0x002140, stat, 0x00000000);
		FUNC11(device, 0x002100, stat);
	}
}
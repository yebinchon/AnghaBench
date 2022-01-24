#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvkm_gr {int dummy; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_fb_tile {int /*<<< orphan*/  zcomp; int /*<<< orphan*/  addr; int /*<<< orphan*/  limit; int /*<<< orphan*/  pitch; } ;
struct nvkm_device {int chipset; struct nvkm_fifo* fifo; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct nv40_gr {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*) ; 
 struct nv40_gr* FUNC17 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  FUNC18 (struct nvkm_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC19 (struct nvkm_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC20 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(struct nvkm_gr *base, int i, struct nvkm_fb_tile *tile)
{
	struct nv40_gr *gr = FUNC17(base);
	struct nvkm_device *device = gr->base.engine.subdev.device;
	struct nvkm_fifo *fifo = device->fifo;
	unsigned long flags;

	FUNC18(fifo, &flags);
	FUNC16(&gr->base);

	switch (device->chipset) {
	case 0x40:
	case 0x41:
	case 0x42:
	case 0x43:
	case 0x45:
		FUNC20(device, FUNC2(i), tile->pitch);
		FUNC20(device, FUNC1(i), tile->limit);
		FUNC20(device, FUNC0(i), tile->addr);
		FUNC20(device, FUNC6(i), tile->pitch);
		FUNC20(device, FUNC5(i), tile->limit);
		FUNC20(device, FUNC4(i), tile->addr);
		switch (device->chipset) {
		case 0x40:
		case 0x45:
			FUNC20(device, FUNC3(i), tile->zcomp);
			FUNC20(device, FUNC7(i), tile->zcomp);
			break;
		case 0x41:
		case 0x42:
		case 0x43:
			FUNC20(device, FUNC8(i), tile->zcomp);
			FUNC20(device, FUNC9(i), tile->zcomp);
			break;
		default:
			break;
		}
		break;
	case 0x47:
	case 0x49:
	case 0x4b:
		FUNC20(device, FUNC12(i), tile->pitch);
		FUNC20(device, FUNC11(i), tile->limit);
		FUNC20(device, FUNC10(i), tile->addr);
		FUNC20(device, FUNC6(i), tile->pitch);
		FUNC20(device, FUNC5(i), tile->limit);
		FUNC20(device, FUNC4(i), tile->addr);
		FUNC20(device, FUNC13(i), tile->zcomp);
		FUNC20(device, FUNC14(i), tile->zcomp);
		break;
	default:
		FUNC15(1);
		break;
	}

	FUNC19(fifo, &flags);
}
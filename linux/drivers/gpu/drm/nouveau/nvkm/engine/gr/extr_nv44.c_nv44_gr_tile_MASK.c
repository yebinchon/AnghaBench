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
struct nvkm_fb_tile {int /*<<< orphan*/  addr; int /*<<< orphan*/  limit; int /*<<< orphan*/  pitch; } ;
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
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 struct nv40_gr* FUNC11 (struct nvkm_gr*) ; 
 int /*<<< orphan*/  FUNC12 (struct nvkm_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC13 (struct nvkm_fifo*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC14 (struct nvkm_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(struct nvkm_gr *base, int i, struct nvkm_fb_tile *tile)
{
	struct nv40_gr *gr = FUNC11(base);
	struct nvkm_device *device = gr->base.engine.subdev.device;
	struct nvkm_fifo *fifo = device->fifo;
	unsigned long flags;

	FUNC12(fifo, &flags);
	FUNC10(&gr->base);

	switch (device->chipset) {
	case 0x44:
	case 0x4a:
		FUNC14(device, FUNC2(i), tile->pitch);
		FUNC14(device, FUNC1(i), tile->limit);
		FUNC14(device, FUNC0(i), tile->addr);
		break;
	case 0x46:
	case 0x4c:
	case 0x63:
	case 0x67:
	case 0x68:
		FUNC14(device, FUNC8(i), tile->pitch);
		FUNC14(device, FUNC7(i), tile->limit);
		FUNC14(device, FUNC6(i), tile->addr);
		FUNC14(device, FUNC5(i), tile->pitch);
		FUNC14(device, FUNC4(i), tile->limit);
		FUNC14(device, FUNC3(i), tile->addr);
		break;
	case 0x4e:
		FUNC14(device, FUNC2(i), tile->pitch);
		FUNC14(device, FUNC1(i), tile->limit);
		FUNC14(device, FUNC0(i), tile->addr);
		FUNC14(device, FUNC5(i), tile->pitch);
		FUNC14(device, FUNC4(i), tile->limit);
		FUNC14(device, FUNC3(i), tile->addr);
		break;
	default:
		FUNC9(1);
		break;
	}

	FUNC13(fifo, &flags);
}
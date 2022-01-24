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
struct nvkm_fb_tile {int /*<<< orphan*/  addr; int /*<<< orphan*/  limit; int /*<<< orphan*/  pitch; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__ subdev; } ;
struct nv31_mpeg {TYPE_2__ engine; } ;

/* Variables and functions */
 struct nv31_mpeg* FUNC0 (struct nvkm_engine*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int /*<<< orphan*/ ) ; 

void
FUNC2(struct nvkm_engine *engine, int i, struct nvkm_fb_tile *tile)
{
	struct nv31_mpeg *mpeg = FUNC0(engine);
	struct nvkm_device *device = mpeg->engine.subdev.device;

	FUNC1(device, 0x00b008 + (i * 0x10), tile->pitch);
	FUNC1(device, 0x00b004 + (i * 0x10), tile->limit);
	FUNC1(device, 0x00b000 + (i * 0x10), tile->addr);
}
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
typedef  int u64 ;
typedef  int u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct nv50_instobj {int /*<<< orphan*/  ram; struct nv50_instmem* imem; } ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__ subdev; } ;
struct nv50_instmem {int addr; TYPE_2__ base; } ;

/* Variables and functions */
 struct nv50_instobj* FUNC0 (struct nvkm_memory*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct nvkm_memory *memory, u64 offset, u32 data)
{
	struct nv50_instobj *iobj = FUNC0(memory);
	struct nv50_instmem *imem = iobj->imem;
	struct nvkm_device *device = imem->base.subdev.device;
	u64 base = (FUNC1(iobj->ram) + offset) & 0xffffff00000ULL;
	u64 addr = (FUNC1(iobj->ram) + offset) & 0x000000fffffULL;
	unsigned long flags;

	FUNC3(&imem->base.lock, flags);
	if (FUNC5(imem->addr != base)) {
		FUNC2(device, 0x001700, base >> 16);
		imem->addr = base;
	}
	FUNC2(device, 0x700000 + addr, data);
	FUNC4(&imem->base.lock, flags);
}
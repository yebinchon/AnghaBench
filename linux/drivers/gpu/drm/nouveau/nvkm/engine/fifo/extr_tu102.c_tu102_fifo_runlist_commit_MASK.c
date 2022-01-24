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
typedef  int /*<<< orphan*/  u64 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;
struct gk104_fifo {TYPE_3__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct gk104_fifo *fifo, int runl,
			  struct nvkm_memory *mem, int nr)
{
	struct nvkm_device *device = fifo->base.engine.subdev.device;
	u64 addr = FUNC1(mem);
	/*XXX: target? */

	FUNC2(device, 0x002b00 + (runl * 0x10), FUNC0(addr));
	FUNC2(device, 0x002b04 + (runl * 0x10), FUNC3(addr));
	FUNC2(device, 0x002b08 + (runl * 0x10), nr);

	/*XXX: how to wait? can you even wait? */
}
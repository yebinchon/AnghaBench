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
typedef  int u64 ;
typedef  int u32 ;
struct nvkm_memory {int dummy; } ;
struct nvkm_fault_data {int addr; int inst; int time; int engine; int valid; int gpc; int hub; int access; int client; int reason; } ;
struct nvkm_fault_buffer {int entries; int /*<<< orphan*/  get; TYPE_4__* fault; int /*<<< orphan*/  put; struct nvkm_memory* mem; } ;
struct nvkm_device {int /*<<< orphan*/  fifo; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_8__ {TYPE_3__* func; TYPE_1__ subdev; } ;
struct TYPE_6__ {int entry_size; } ;
struct TYPE_7__ {TYPE_2__ buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_memory*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct nvkm_fault_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_memory*) ; 
 int FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct nvkm_memory*,int const) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(struct nvkm_fault_buffer *buffer)
{
	struct nvkm_device *device = buffer->fault->subdev.device;
	struct nvkm_memory *mem = buffer->mem;
	u32 get = FUNC3(device, buffer->get);
	u32 put = FUNC3(device, buffer->put);
	if (put == get)
		return;

	FUNC2(mem);
	while (get != put) {
		const u32   base = get * buffer->fault->func->buffer.entry_size;
		const u32 instlo = FUNC4(mem, base + 0x00);
		const u32 insthi = FUNC4(mem, base + 0x04);
		const u32 addrlo = FUNC4(mem, base + 0x08);
		const u32 addrhi = FUNC4(mem, base + 0x0c);
		const u32 timelo = FUNC4(mem, base + 0x10);
		const u32 timehi = FUNC4(mem, base + 0x14);
		const u32  info0 = FUNC4(mem, base + 0x18);
		const u32  info1 = FUNC4(mem, base + 0x1c);
		struct nvkm_fault_data info;

		if (++get == buffer->entries)
			get = 0;
		FUNC5(device, buffer->get, get);

		info.addr   = ((u64)addrhi << 32) | addrlo;
		info.inst   = ((u64)insthi << 32) | instlo;
		info.time   = ((u64)timehi << 32) | timelo;
		info.engine = (info0 & 0x000000ff);
		info.valid  = (info1 & 0x80000000) >> 31;
		info.gpc    = (info1 & 0x1f000000) >> 24;
		info.hub    = (info1 & 0x00100000) >> 20;
		info.access = (info1 & 0x000f0000) >> 16;
		info.client = (info1 & 0x00007f00) >> 8;
		info.reason = (info1 & 0x0000001f);

		FUNC1(device->fifo, &info);
	}
	FUNC0(mem);
}
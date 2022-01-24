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
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_4__ {TYPE_1__* client; } ;
struct nvkm_fifo_chan {int chid; TYPE_2__ object; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_engine {struct nvkm_subdev subdev; } ;
struct nvkm_device {struct nvkm_fifo* fifo; } ;
typedef  int /*<<< orphan*/  msg ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  g84_cipher_intr_mask ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_subdev*,char*,int,char*,int,int,char*,int,int) ; 
 struct nvkm_fifo_chan* FUNC1 (struct nvkm_fifo*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_fifo*,unsigned long,struct nvkm_fifo_chan**) ; 
 int FUNC3 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static void
FUNC6(struct nvkm_engine *cipher)
{
	struct nvkm_subdev *subdev = &cipher->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvkm_fifo *fifo = device->fifo;
	struct nvkm_fifo_chan *chan;
	u32 stat = FUNC3(device, 0x102130);
	u32 mthd = FUNC3(device, 0x102190);
	u32 data = FUNC3(device, 0x102194);
	u32 inst = FUNC3(device, 0x102188) & 0x7fffffff;
	unsigned long flags;
	char msg[128];

	chan = FUNC1(fifo, (u64)inst << 12, &flags);
	if (stat) {
		FUNC4(msg, sizeof(msg), g84_cipher_intr_mask, stat);
		FUNC0(subdev,  "%08x [%s] ch %d [%010llx %s] "
				    "mthd %04x data %08x\n", stat, msg,
			   chan ? chan->chid : -1, (u64)inst << 12,
			   chan ? chan->object.client->name : "unknown",
			   mthd, data);
	}
	FUNC2(fifo, flags, &chan);

	FUNC5(device, 0x102130, stat);
	FUNC5(device, 0x10200c, 0x10);
}
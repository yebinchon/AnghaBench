#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nvkm_subdev {struct nvkm_device* device; } ;
struct TYPE_8__ {TYPE_2__* client; } ;
struct nvkm_fifo_chan {int chid; TYPE_3__ object; } ;
struct nvkm_fifo {int dummy; } ;
struct nvkm_fault_data {int gpc; int /*<<< orphan*/  inst; int /*<<< orphan*/  reason; int /*<<< orphan*/  client; int /*<<< orphan*/  engine; int /*<<< orphan*/  addr; scalar_t__ access; scalar_t__ hub; } ;
struct nvkm_enum {int data2; char* name; } ;
struct nvkm_engine {int dummy; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {struct nvkm_subdev subdev; } ;
struct TYPE_9__ {TYPE_1__ engine; } ;
struct gf100_fifo {TYPE_4__ base; } ;
typedef  int /*<<< orphan*/  gpcid ;
struct TYPE_7__ {char* name; } ;

/* Variables and functions */
#define  NVKM_ENGINE_IFB 130 
#define  NVKM_SUBDEV_BAR 129 
#define  NVKM_SUBDEV_INSTMEM 128 
 struct gf100_fifo* FUNC0 (struct nvkm_fifo*) ; 
 int /*<<< orphan*/  gf100_fifo_fault_engine ; 
 int /*<<< orphan*/  gf100_fifo_fault_gpcclient ; 
 int /*<<< orphan*/  gf100_fifo_fault_hubclient ; 
 int /*<<< orphan*/  gf100_fifo_fault_reason ; 
 int /*<<< orphan*/  FUNC1 (struct gf100_fifo*,struct nvkm_engine*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*) ; 
 struct nvkm_engine* FUNC4 (struct nvkm_device*,int) ; 
 struct nvkm_enum* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct nvkm_subdev*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,char*) ; 
 struct nvkm_fifo_chan* FUNC7 (TYPE_4__*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,unsigned long,struct nvkm_fifo_chan**) ; 
 int /*<<< orphan*/  FUNC9 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 

__attribute__((used)) static void
FUNC11(struct nvkm_fifo *base, struct nvkm_fault_data *info)
{
	struct gf100_fifo *fifo = FUNC0(base);
	struct nvkm_subdev *subdev = &fifo->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	const struct nvkm_enum *er, *eu, *ec;
	struct nvkm_engine *engine = NULL;
	struct nvkm_fifo_chan *chan;
	unsigned long flags;
	char gpcid[8] = "";

	er = FUNC5(gf100_fifo_fault_reason, info->reason);
	eu = FUNC5(gf100_fifo_fault_engine, info->engine);
	if (info->hub) {
		ec = FUNC5(gf100_fifo_fault_hubclient, info->client);
	} else {
		ec = FUNC5(gf100_fifo_fault_gpcclient, info->client);
		FUNC10(gpcid, sizeof(gpcid), "GPC%d/", info->gpc);
	}

	if (eu && eu->data2) {
		switch (eu->data2) {
		case NVKM_SUBDEV_BAR:
			FUNC2(device);
			break;
		case NVKM_SUBDEV_INSTMEM:
			FUNC3(device);
			break;
		case NVKM_ENGINE_IFB:
			FUNC9(device, 0x001718, 0x00000000, 0x00000000);
			break;
		default:
			engine = FUNC4(device, eu->data2);
			break;
		}
	}

	chan = FUNC7(&fifo->base, info->inst, &flags);

	FUNC6(subdev,
		   "%s fault at %010llx engine %02x [%s] client %02x [%s%s] "
		   "reason %02x [%s] on channel %d [%010llx %s]\n",
		   info->access ? "write" : "read", info->addr,
		   info->engine, eu ? eu->name : "",
		   info->client, gpcid, ec ? ec->name : "",
		   info->reason, er ? er->name : "", chan ? chan->chid : -1,
		   info->inst, chan ? chan->object.client->name : "unknown");

	if (engine && chan)
		FUNC1(fifo, engine, (void *)chan);
	FUNC8(&fifo->base, flags, &chan);
}
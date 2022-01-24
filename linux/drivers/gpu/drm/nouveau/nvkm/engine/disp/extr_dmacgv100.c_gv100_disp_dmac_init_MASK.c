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
struct nvkm_device {int dummy; } ;
struct TYPE_8__ {int ctrl; } ;
struct nv50_disp_chan {int /*<<< orphan*/  push; TYPE_4__ chid; TYPE_3__* disp; } ;
struct TYPE_5__ {struct nvkm_subdev subdev; } ;
struct TYPE_6__ {TYPE_1__ engine; } ;
struct TYPE_7__ {TYPE_2__ base; } ;

/* Variables and functions */
 int FUNC0 (struct nv50_disp_chan*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int const,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct nv50_disp_chan *chan)
{
	struct nvkm_subdev *subdev = &chan->disp->base.engine.subdev;
	struct nvkm_device *device = subdev->device;
	const u32 uoff = (chan->chid.ctrl - 1) * 0x1000;
	const u32 poff = chan->chid.ctrl * 0x10;
	const u32 coff = chan->chid.ctrl * 0x04;

	FUNC3(device, 0x610b24 + poff, FUNC1(chan->push));
	FUNC3(device, 0x610b20 + poff, FUNC4(chan->push));
	FUNC3(device, 0x610b28 + poff, 0x00000001);
	FUNC3(device, 0x610b2c + poff, 0x00000040);

	FUNC2(device, 0x6104e0 + coff, 0x00000010, 0x00000010);
	FUNC3(device, 0x690000 + uoff, 0x00000000);
	FUNC3(device, 0x6104e0 + coff, 0x00000013);
	return FUNC0(chan);
}
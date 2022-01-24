#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct nvkm_device {int dummy; } ;
struct TYPE_10__ {int ctrl; } ;
struct nv50_disp_chan {TYPE_5__ chid; TYPE_4__* disp; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_1__ subdev; } ;
struct TYPE_8__ {TYPE_2__ engine; } ;
struct TYPE_9__ {TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nv50_disp_chan*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int const,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nv50_disp_chan *chan)
{
	struct nvkm_device *device = chan->disp->base.engine.subdev.device;
	const u32 hoff = chan->chid.ctrl * 4;
	FUNC1(device, 0x6104e0 + hoff, 0x00000010, 0x00000010);
	FUNC0(chan);
	FUNC1(device, 0x6104e0 + hoff, 0x00000001, 0x00000000);
}
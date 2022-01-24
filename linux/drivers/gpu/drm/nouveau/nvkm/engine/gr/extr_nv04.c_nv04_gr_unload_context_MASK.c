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
struct nvkm_device {int dummy; } ;
struct nv04_gr_chan {int /*<<< orphan*/ * nv04; TYPE_4__* gr; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;
struct TYPE_8__ {TYPE_3__ base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NV04_PGRAPH_CTX_CONTROL ; 
 int /*<<< orphan*/  NV04_PGRAPH_CTX_USER ; 
 int /*<<< orphan*/ * nv04_gr_ctx_regs ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct nv04_gr_chan *chan)
{
	struct nvkm_device *device = chan->gr->base.engine.subdev.device;
	int i;

	for (i = 0; i < FUNC0(nv04_gr_ctx_regs); i++)
		chan->nv04[i] = FUNC2(device, nv04_gr_ctx_regs[i]);

	FUNC3(device, NV04_PGRAPH_CTX_CONTROL, 0x10000000);
	FUNC1(device, NV04_PGRAPH_CTX_USER, 0xff000000, 0x0f000000);
	return 0;
}
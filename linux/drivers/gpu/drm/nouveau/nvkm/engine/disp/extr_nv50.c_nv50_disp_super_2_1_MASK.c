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
struct TYPE_10__ {int hz; } ;
struct nvkm_head {scalar_t__ id; TYPE_5__ asy; } ;
struct nvkm_devinit {int dummy; } ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_8__ {TYPE_2__ subdev; } ;
struct TYPE_9__ {TYPE_3__ engine; } ;
struct nv50_disp {TYPE_4__ base; } ;
struct TYPE_6__ {struct nvkm_devinit* devinit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_head*,char*,int const) ; 
 scalar_t__ PLL_VPLL0 ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_devinit*,scalar_t__,int const) ; 

void
FUNC2(struct nv50_disp *disp, struct nvkm_head *head)
{
	struct nvkm_devinit *devinit = disp->base.engine.subdev.device->devinit;
	const u32 khz = head->asy.hz / 1000;
	FUNC0(head, "supervisor 2.1 - %d khz", khz);
	if (khz)
		FUNC1(devinit, PLL_VPLL0 + head->id, khz);
}
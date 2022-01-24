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
typedef  scalar_t__ u32 ;
struct TYPE_8__ {int link; } ;
struct nvkm_ior {TYPE_4__ asy; TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_5__ {struct nvkm_device* device; } ;
struct TYPE_6__ {TYPE_1__ subdev; } ;
struct TYPE_7__ {TYPE_2__ engine; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_ior*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,scalar_t__ const,int,int const) ; 

void
FUNC2(struct nvkm_ior *sor)
{
	struct nvkm_device *device = sor->disp->engine.subdev.device;
	const int  div = sor->asy.link == 3;
	const u32 soff = FUNC0(sor);
	FUNC1(device, 0x614300 + soff, 0x00000707, (div << 8) | div);
}
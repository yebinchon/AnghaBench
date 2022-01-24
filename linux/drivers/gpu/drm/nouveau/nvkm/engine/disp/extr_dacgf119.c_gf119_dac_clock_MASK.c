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
typedef  scalar_t__ u32 ;
struct nvkm_ior {TYPE_3__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_4__ {struct nvkm_device* device; } ;
struct TYPE_5__ {TYPE_1__ subdev; } ;
struct TYPE_6__ {TYPE_2__ engine; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nvkm_ior*) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,scalar_t__ const,int,int) ; 

__attribute__((used)) static void
FUNC2(struct nvkm_ior *dac)
{
	struct nvkm_device *device = dac->disp->engine.subdev.device;
	const u32 doff = FUNC0(dac);
	FUNC1(device, 0x612280 + doff, 0x07070707, 0x00000000);
}
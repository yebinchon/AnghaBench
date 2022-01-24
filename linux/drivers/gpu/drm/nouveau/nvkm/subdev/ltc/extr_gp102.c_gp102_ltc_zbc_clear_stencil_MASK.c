#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {struct nvkm_device* device; } ;
struct nvkm_ltc {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nvkm_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_device*,int,int /*<<< orphan*/  const) ; 

void
FUNC2(struct nvkm_ltc *ltc, int i, const u32 stencil)
{
	struct nvkm_device *device = ltc->subdev.device;
	FUNC0(device, 0x17e338, 0x0000000f, i);
	FUNC1(device, 0x17e204, stencil);
}
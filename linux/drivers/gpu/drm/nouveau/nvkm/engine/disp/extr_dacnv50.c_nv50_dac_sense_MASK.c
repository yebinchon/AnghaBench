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
struct nvkm_ior {TYPE_1__* func; TYPE_4__* disp; } ;
struct nvkm_device {int dummy; } ;
struct TYPE_6__ {struct nvkm_device* device; } ;
struct TYPE_7__ {TYPE_2__ subdev; } ;
struct TYPE_8__ {TYPE_3__ engine; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* power ) (struct nvkm_ior*,int,int,int,int,int) ;} ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct nvkm_ior*) ; 
 int FUNC2 (struct nvkm_device*,int const,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int const,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_ior*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nvkm_ior*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

int
FUNC7(struct nvkm_ior *dac, u32 loadval)
{
	struct nvkm_device *device = dac->disp->engine.subdev.device;
	const u32 doff = FUNC1(dac);

	dac->func->power(dac, false, true, false, false, false);

	FUNC3(device, 0x61a00c + doff, 0x00100000 | loadval);
	FUNC0(9);
	FUNC6(500);
	loadval = FUNC2(device, 0x61a00c + doff, 0xffffffff, 0x00000000);

	dac->func->power(dac, false, false, false, false, false);
	if (!(loadval & 0x80000000))
		return -ETIMEDOUT;

	return (loadval & 0x38000000) >> 27;
}
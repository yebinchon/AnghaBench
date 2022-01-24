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
typedef  int u32 ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_volt {TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
struct nvbios_volt {int pwm_freq; int base; int /*<<< orphan*/  pwm_range; } ;
struct TYPE_4__ {struct nvbios_volt bios; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct nvkm_volt*) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_device*,int,int) ; 

__attribute__((used)) static int
FUNC3(struct nvkm_volt *base, u32 uv)
{
	struct nvbios_volt *bios = &FUNC1(base)->bios;
	struct nvkm_device *device = base->subdev.device;
	u32 div, duty;

	/* the blob uses this crystal frequency, let's use it too. */
	div = 27648000 / bios->pwm_freq;
	duty = FUNC0((uv - bios->base) * div, bios->pwm_range);

	FUNC2(device, 0x20340, div);
	FUNC2(device, 0x20344, 0x80000000 | duty);

	return 0;
}
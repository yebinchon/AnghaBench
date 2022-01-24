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
typedef  int uint32_t ;
struct TYPE_2__ {int /*<<< orphan*/  alarm_program_lock; } ;
struct nvbios_therm_sensor {int /*<<< orphan*/  thrs_critical; int /*<<< orphan*/  thrs_fan_boost; int /*<<< orphan*/  thrs_shutdown; int /*<<< orphan*/  thrs_down_clock; } ;
struct nvkm_subdev {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_1__ sensor; struct nvbios_therm_sensor bios_sensor; struct nvkm_subdev subdev; } ;
struct nvkm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVKM_THERM_THRS_CRITICAL ; 
 int /*<<< orphan*/  NVKM_THERM_THRS_DOWNCLOCK ; 
 int /*<<< orphan*/  NVKM_THERM_THRS_FANBOOST ; 
 int /*<<< orphan*/  NVKM_THERM_THRS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct nvkm_therm*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_subdev*,char*,int) ; 
 int FUNC2 (struct nvkm_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_device*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC6(struct nvkm_therm *therm)
{
	struct nvkm_subdev *subdev = &therm->subdev;
	struct nvkm_device *device = subdev->device;
	struct nvbios_therm_sensor *sensor = &therm->bios_sensor;
	unsigned long flags;
	uint32_t intr;

	FUNC4(&therm->sensor.alarm_program_lock, flags);

	intr = FUNC2(device, 0x20100) & 0x3ff;

	/* THRS_4: downclock */
	if (intr & 0x002) {
		FUNC0(therm, 0x20414, 24,
						   &sensor->thrs_down_clock,
						   NVKM_THERM_THRS_DOWNCLOCK);
		intr &= ~0x002;
	}

	/* shutdown */
	if (intr & 0x004) {
		FUNC0(therm, 0x20480, 20,
						   &sensor->thrs_shutdown,
						   NVKM_THERM_THRS_SHUTDOWN);
		intr &= ~0x004;
	}

	/* THRS_1 : fan boost */
	if (intr & 0x008) {
		FUNC0(therm, 0x204c4, 21,
						   &sensor->thrs_fan_boost,
						   NVKM_THERM_THRS_FANBOOST);
		intr &= ~0x008;
	}

	/* THRS_2 : critical */
	if (intr & 0x010) {
		FUNC0(therm, 0x204c0, 22,
						   &sensor->thrs_critical,
						   NVKM_THERM_THRS_CRITICAL);
		intr &= ~0x010;
	}

	if (intr)
		FUNC1(subdev, "intr %08x\n", intr);

	/* ACK everything */
	FUNC3(device, 0x20100, 0xffffffff);
	FUNC3(device, 0x1100, 0x10000); /* PBUS */

	FUNC5(&therm->sensor.alarm_program_lock, flags);
}
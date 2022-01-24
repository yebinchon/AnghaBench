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
struct TYPE_4__ {int /*<<< orphan*/  therm_poll_alarm; } ;
struct nvkm_subdev {TYPE_1__* device; } ;
struct nvkm_therm {int /*<<< orphan*/  bios_sensor; TYPE_2__ sensor; struct nvkm_subdev subdev; } ;
struct nvkm_bios {int dummy; } ;
struct TYPE_3__ {struct nvkm_bios* bios; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVBIOS_THERM_DOMAIN_CORE ; 
 int /*<<< orphan*/  alarm_timer_callback ; 
 scalar_t__ FUNC0 (struct nvkm_bios*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nvkm_subdev*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_therm*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_therm*) ; 

int
FUNC5(struct nvkm_therm *therm)
{
	struct nvkm_subdev *subdev = &therm->subdev;
	struct nvkm_bios *bios = subdev->device->bios;

	FUNC1(&therm->sensor.therm_poll_alarm, alarm_timer_callback);

	FUNC4(therm);
	if (FUNC0(bios, NVBIOS_THERM_DOMAIN_CORE,
				      &therm->bios_sensor))
		FUNC2(subdev, "nvbios_therm_sensor_parse failed\n");
	FUNC3(therm);

	return 0;
}
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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {struct nvkm_device* device; } ;
struct nvkm_therm {TYPE_2__* func; TYPE_1__ subdev; } ;
struct nvkm_device {int dummy; } ;
struct nvbios_therm_threshold {int temp; int hysteresis; } ;
typedef  enum nvkm_therm_thrs_state { ____Placeholder_nvkm_therm_thrs_state } nvkm_therm_thrs_state ;
typedef  enum nvkm_therm_thrs_direction { ____Placeholder_nvkm_therm_thrs_direction } nvkm_therm_thrs_direction ;
typedef  enum nvkm_therm_thrs { ____Placeholder_nvkm_therm_thrs } nvkm_therm_thrs ;
struct TYPE_4__ {int (* temp_get ) (struct nvkm_therm*) ;} ;

/* Variables and functions */
 int NVKM_THERM_THRS_FALLING ; 
 int NVKM_THERM_THRS_HIGHER ; 
 int NVKM_THERM_THRS_LOWER ; 
 int NVKM_THERM_THRS_RISING ; 
 int FUNC0 (struct nvkm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nvkm_therm*,int,int) ; 
 int FUNC2 (struct nvkm_therm*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nvkm_therm*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct nvkm_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct nvkm_therm*) ; 

__attribute__((used)) static void
FUNC6(struct nvkm_therm *therm,
				   uint32_t thrs_reg, u8 status_bit,
				   const struct nvbios_therm_threshold *thrs,
				   enum nvkm_therm_thrs thrs_name)
{
	struct nvkm_device *device = therm->subdev.device;
	enum nvkm_therm_thrs_direction direction;
	enum nvkm_therm_thrs_state prev_state, new_state;
	int temp, cur;

	prev_state = FUNC2(therm, thrs_name);
	temp = FUNC0(device, thrs_reg);

	/* program the next threshold */
	if (temp == thrs->temp) {
		FUNC4(device, thrs_reg, thrs->temp - thrs->hysteresis);
		new_state = NVKM_THERM_THRS_HIGHER;
	} else {
		FUNC4(device, thrs_reg, thrs->temp);
		new_state = NVKM_THERM_THRS_LOWER;
	}

	/* fix the state (in case someone reprogrammed the alarms) */
	cur = therm->func->temp_get(therm);
	if (new_state == NVKM_THERM_THRS_LOWER && cur > thrs->temp)
		new_state = NVKM_THERM_THRS_HIGHER;
	else if (new_state == NVKM_THERM_THRS_HIGHER &&
		cur < thrs->temp - thrs->hysteresis)
		new_state = NVKM_THERM_THRS_LOWER;
	FUNC3(therm, thrs_name, new_state);

	/* find the direction */
	if (prev_state < new_state)
		direction = NVKM_THERM_THRS_RISING;
	else if (prev_state > new_state)
		direction = NVKM_THERM_THRS_FALLING;
	else
		return;

	/* advertise a change in direction */
	FUNC1(therm, thrs_name, direction);
}
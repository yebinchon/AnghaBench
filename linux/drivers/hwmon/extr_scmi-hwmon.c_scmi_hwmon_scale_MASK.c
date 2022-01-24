#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct scmi_sensor_info {scalar_t__ scale; int type; } ;
typedef  scalar_t__ s8 ;

/* Variables and functions */
#define  CURRENT 132 
 int E2BIG ; 
#define  ENERGY 131 
#define  POWER 130 
#define  TEMPERATURE_C 129 
#define  VOLTAGE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(const struct scmi_sensor_info *sensor, u64 *value)
{
	s8 scale = sensor->scale;
	u64 f;

	switch (sensor->type) {
	case TEMPERATURE_C:
	case VOLTAGE:
	case CURRENT:
		scale += 3;
		break;
	case POWER:
	case ENERGY:
		scale += 6;
		break;
	default:
		break;
	}

	if (scale == 0)
		return 0;

	if (FUNC1(scale) > 19)
		return -E2BIG;

	f = FUNC0(FUNC1(scale));
	if (scale > 0)
		*value *= f;
	else
		*value = FUNC2(*value, f);

	return 0;
}
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
struct st_sensor_settings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct st_sensor_settings const*) ; 
 struct st_sensor_settings const* st_press_sensors_settings ; 
 int FUNC1 (char const*,struct st_sensor_settings const*,int /*<<< orphan*/ ) ; 

const struct st_sensor_settings *FUNC2(const char *name)
{
	int index = FUNC1(name,
					st_press_sensors_settings,
					FUNC0(st_press_sensors_settings));
	if (index < 0)
		return NULL;

	return &st_press_sensors_settings[index];
}
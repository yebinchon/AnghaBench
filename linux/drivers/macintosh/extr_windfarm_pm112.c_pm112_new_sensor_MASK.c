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
struct wf_sensor {unsigned int* name; } ;

/* Variables and functions */
 unsigned int NR_CORES ; 
 int have_all_sensors ; 
 struct wf_sensor* hd_temp ; 
 unsigned int nr_cores ; 
 struct wf_sensor** sens_cpu_power ; 
 struct wf_sensor** sens_cpu_temp ; 
 struct wf_sensor* slots_power ; 
 int /*<<< orphan*/  FUNC0 (unsigned int*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int*,char*,int) ; 
 struct wf_sensor* u4_temp ; 
 scalar_t__ FUNC2 (struct wf_sensor*) ; 

__attribute__((used)) static void FUNC3(struct wf_sensor *sr)
{
	unsigned int i;

	if (!FUNC1(sr->name, "cpu-temp-", 9)) {
		i = sr->name[9] - '0';
		if (sr->name[10] == 0 && i < NR_CORES &&
		    sens_cpu_temp[i] == NULL && FUNC2(sr) == 0)
			sens_cpu_temp[i] = sr;

	} else if (!FUNC1(sr->name, "cpu-power-", 10)) {
		i = sr->name[10] - '0';
		if (sr->name[11] == 0 && i < NR_CORES &&
		    sens_cpu_power[i] == NULL && FUNC2(sr) == 0)
			sens_cpu_power[i] = sr;
	} else if (!FUNC0(sr->name, "hd-temp")) {
		if (hd_temp == NULL && FUNC2(sr) == 0)
			hd_temp = sr;
	} else if (!FUNC0(sr->name, "slots-power")) {
		if (slots_power == NULL && FUNC2(sr) == 0)
			slots_power = sr;
	} else if (!FUNC0(sr->name, "backside-temp")) {
		if (u4_temp == NULL && FUNC2(sr) == 0)
			u4_temp = sr;
	} else
		return;

	/* check if we have all the sensors we need */
	for (i = 0; i < nr_cores; ++i)
		if (sens_cpu_temp[i] == NULL || sens_cpu_power[i] == NULL)
			return;

	have_all_sensors = 1;
}
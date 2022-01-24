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
struct wf_control {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUFREQ ; 
 int /*<<< orphan*/  FAN_CPU ; 
 int /*<<< orphan*/  FAN_HD ; 
 int /*<<< orphan*/  FAN_OD ; 
 int pm121_all_controls_ok ; 
 scalar_t__ FUNC0 (struct wf_control*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct wf_control *ct)
{
	int all = 1;

	if (pm121_all_controls_ok)
		return;

	all = FUNC0(ct, "optical-drive-fan", FAN_OD) && all;
	all = FUNC0(ct, "hard-drive-fan", FAN_HD) && all;
	all = FUNC0(ct, "cpu-fan", FAN_CPU) && all;
	all = FUNC0(ct, "cpufreq-clamp", CPUFREQ) && all;

	if (all)
		pm121_all_controls_ok = 1;
}
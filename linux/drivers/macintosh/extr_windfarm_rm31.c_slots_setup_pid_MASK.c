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
struct wf_pid_param {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  slots_fan ; 
 struct wf_pid_param slots_param ; 
 int /*<<< orphan*/  slots_pid ; 
 int slots_tick ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wf_pid_param*) ; 

__attribute__((used)) static void FUNC6(void)
{
	/* first time initialize things */
	s32 fmin = FUNC4(slots_fan);
	s32 fmax = FUNC3(slots_fan);
	struct wf_pid_param param = slots_param;

	param.min = FUNC0(param.min, fmin);
	param.max = FUNC1(param.max, fmax);
	FUNC5(&slots_pid, &param);
	slots_tick = 1;

	FUNC2("wf_rm31: Slots control loop started.\n");
}
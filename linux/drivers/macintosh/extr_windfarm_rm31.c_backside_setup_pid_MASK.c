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
 int /*<<< orphan*/  backside_fan ; 
 struct wf_pid_param backside_param ; 
 int /*<<< orphan*/  backside_pid ; 
 int backside_tick ; 
 struct wf_pid_param dimms_param ; 
 int /*<<< orphan*/  dimms_pid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct wf_pid_param*) ; 

__attribute__((used)) static void FUNC6(void)
{
	/* first time initialize things */
	s32 fmin = FUNC4(backside_fan);
	s32 fmax = FUNC3(backside_fan);
	struct wf_pid_param param;

	param = backside_param;
	param.min = FUNC0(param.min, fmin);
	param.max = FUNC1(param.max, fmax);
	FUNC5(&backside_pid, &param);

	param = dimms_param;
	FUNC5(&dimms_pid, &param);

	backside_tick = 1;

	FUNC2("wf_rm31: Backside control loop started.\n");
}
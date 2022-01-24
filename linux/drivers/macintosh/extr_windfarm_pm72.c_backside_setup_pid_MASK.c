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
typedef  int u32 ;
struct wf_pid_param {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  backside_fan ; 
 int /*<<< orphan*/  backside_pid ; 
 int backside_tick ; 
 struct wf_pid_param backside_u3_param ; 
 struct wf_pid_param backside_u3h_param ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC2 (char*) ; 
 int* FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct wf_pid_param*) ; 

__attribute__((used)) static void FUNC9(void)
{
	/* first time initialize things */
	s32 fmin = FUNC7(backside_fan);
	s32 fmax = FUNC6(backside_fan);
	struct wf_pid_param param;
	struct device_node *u3;
	int u3h = 1; /* conservative by default */

	u3 = FUNC2("/u3@0,f8000000");
	if (u3 != NULL) {
		const u32 *vers = FUNC3(u3, "device-rev", NULL);
		if (vers)
			if (((*vers) & 0x3f) < 0x34)
				u3h = 0;
		FUNC4(u3);
	}

	param = u3h ? backside_u3h_param : backside_u3_param;

	param.min = FUNC0(param.min, fmin);
	param.max = FUNC1(param.max, fmax);
	FUNC8(&backside_pid, &param);
	backside_tick = 1;

	FUNC5("wf_pm72: Backside control loop started.\n");
}
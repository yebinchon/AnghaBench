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
struct smu_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SMU_MSG_AllowGfxOff ; 
 int /*<<< orphan*/  SMU_MSG_DisallowGfxOff ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct smu_context*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smu_context*) ; 

__attribute__((used)) static int FUNC4(struct smu_context *smu, bool enable)
{
	int ret = 0, timeout = 500;

	if (enable) {
		ret = FUNC2(smu, SMU_MSG_AllowGfxOff);

		/* confirm gfx is back to "off" state, timeout is 5 seconds */
		while (!(FUNC3(smu) == 0)) {
			FUNC1(10);
			timeout--;
			if (timeout == 0) {
				FUNC0("enable gfxoff timeout and failed!\n");
				break;
			}
		}
	} else {
		ret = FUNC2(smu, SMU_MSG_DisallowGfxOff);

		/* confirm gfx is back to "on" state, timeout is 0.5 second */
		while (!(FUNC3(smu) == 2)) {
			FUNC1(1);
			timeout--;
			if (timeout == 0) {
				FUNC0("disable gfxoff timeout and failed!\n");
				break;
			}
		}
	}

	return ret;
}
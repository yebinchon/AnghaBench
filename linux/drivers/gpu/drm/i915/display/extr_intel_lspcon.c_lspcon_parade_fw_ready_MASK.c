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
typedef  int u8 ;
struct drm_dp_aux {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LSPCON_PARADE_AVI_IF_CTRL ; 
 int LSPCON_PARADE_AVI_IF_KICKOFF ; 
 scalar_t__ FUNC1 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static bool FUNC3(struct drm_dp_aux *aux)
{
	u8 avi_if_ctrl;
	u8 retry;
	ssize_t ret;

	/* Check if LSPCON FW is ready for data */
	for (retry = 0; retry < 5; retry++) {
		if (retry)
			FUNC2(200, 300);

		ret = FUNC1(aux, LSPCON_PARADE_AVI_IF_CTRL,
				       &avi_if_ctrl, 1);
		if (ret < 0) {
			FUNC0("Failed to read AVI IF control\n");
			return false;
		}

		if ((avi_if_ctrl & LSPCON_PARADE_AVI_IF_KICKOFF) == 0)
			return true;
	}

	FUNC0("Parade FW not ready to accept AVI IF\n");
	return false;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dev; scalar_t__ dload_mode_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCOM_SCM_SET_DLOAD_MODE ; 
 int /*<<< orphan*/  QCOM_SCM_SVC_BOOT ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* __scm ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(bool enable)
{
	bool avail;
	int ret = 0;

	avail = FUNC1(__scm->dev,
					     QCOM_SCM_SVC_BOOT,
					     QCOM_SCM_SET_DLOAD_MODE);
	if (avail) {
		ret = FUNC2(__scm->dev, enable);
	} else if (__scm->dload_mode_addr) {
		ret = FUNC0(__scm->dev, __scm->dload_mode_addr,
					   enable ? QCOM_SCM_SET_DLOAD_MODE : 0);
	} else {
		FUNC3(__scm->dev,
			"No available mechanism for setting download mode\n");
	}

	if (ret)
		FUNC3(__scm->dev, "failed to set download mode: %d\n", ret);
}
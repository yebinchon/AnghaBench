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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCOM_SCM_CMD_HDCP ; 
 int /*<<< orphan*/  QCOM_SCM_SVC_HDCP ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* __scm ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

bool FUNC3(void)
{
	int ret = FUNC2();

	if (ret)
		return ret;

	ret = FUNC0(__scm->dev, QCOM_SCM_SVC_HDCP,
						QCOM_SCM_CMD_HDCP);

	FUNC1();

	return ret > 0 ? true : false;
}
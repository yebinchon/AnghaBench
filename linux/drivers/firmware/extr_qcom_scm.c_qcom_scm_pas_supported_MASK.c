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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  QCOM_SCM_PAS_IS_SUPPORTED_CMD ; 
 int /*<<< orphan*/  QCOM_SCM_SVC_PIL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* __scm ; 

bool FUNC2(u32 peripheral)
{
	int ret;

	ret = FUNC0(__scm->dev, QCOM_SCM_SVC_PIL,
					   QCOM_SCM_PAS_IS_SUPPORTED_CMD);
	if (ret <= 0)
		return false;

	return FUNC1(__scm->dev, peripheral);
}
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
struct qcom_scm_hdcp_req {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct qcom_scm_hdcp_req*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* __scm ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 

int FUNC3(struct qcom_scm_hdcp_req *req, u32 req_cnt, u32 *resp)
{
	int ret = FUNC2();

	if (ret)
		return ret;

	ret = FUNC0(__scm->dev, req, req_cnt, resp);
	FUNC1();
	return ret;
}
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
typedef  int /*<<< orphan*/  svc_cmd ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ret_val ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  QCOM_IS_CALL_AVAIL_CMD ; 
 int /*<<< orphan*/  QCOM_SCM_SVC_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct device *dev, u32 svc_id, u32 cmd_id)
{
	int ret;
	__le32 svc_cmd = FUNC0((svc_id << 10) | cmd_id);
	__le32 ret_val = 0;

	ret = FUNC2(dev, QCOM_SCM_SVC_INFO, QCOM_IS_CALL_AVAIL_CMD,
			    &svc_cmd, sizeof(svc_cmd), &ret_val,
			    sizeof(ret_val));
	if (ret)
		return ret;

	return FUNC1(ret_val);
}
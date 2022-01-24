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
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  out ;
typedef  int /*<<< orphan*/  in ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  QCOM_SCM_PAS_AUTH_AND_RESET_CMD ; 
 int /*<<< orphan*/  QCOM_SCM_SVC_PIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

int FUNC3(struct device *dev, u32 peripheral)
{
	__le32 out;
	__le32 in;
	int ret;

	in = FUNC0(peripheral);
	ret = FUNC2(dev, QCOM_SCM_SVC_PIL,
			    QCOM_SCM_PAS_AUTH_AND_RESET_CMD,
			    &in, sizeof(in),
			    &out, sizeof(out));

	return ret ? : FUNC1(out);
}
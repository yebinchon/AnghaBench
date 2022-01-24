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
struct qcom_scm_desc {int /*<<< orphan*/  arginfo; int /*<<< orphan*/ * args; int /*<<< orphan*/  member_0; } ;
struct device {int dummy; } ;
struct arm_smccc_res {size_t a1; int a2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  QCOM_SCM_IOMMU_SECURE_PTBL_SIZE ; 
 int /*<<< orphan*/  QCOM_SCM_SVC_MP ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct qcom_scm_desc*,struct arm_smccc_res*) ; 

int FUNC2(struct device *dev, u32 spare,
				      size_t *size)
{
	struct qcom_scm_desc desc = {0};
	struct arm_smccc_res res;
	int ret;

	desc.args[0] = spare;
	desc.arginfo = FUNC0(1);

	ret = FUNC1(dev, QCOM_SCM_SVC_MP,
			    QCOM_SCM_IOMMU_SECURE_PTBL_SIZE, &desc, &res);

	if (size)
		*size = res.a1;

	return ret ? : res.a2;
}
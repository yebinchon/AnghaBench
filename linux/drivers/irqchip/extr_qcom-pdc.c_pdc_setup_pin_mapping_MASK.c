#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cnt; int /*<<< orphan*/  parent_base; int /*<<< orphan*/  pin_base; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device_node*,char*,int) ; 
 int FUNC2 (struct device_node*,char*,int,int /*<<< orphan*/ *) ; 
 TYPE_1__* pdc_region ; 
 int pdc_region_cnt ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	int ret, n;

	n = FUNC1(np, "qcom,pdc-ranges", sizeof(u32));
	if (n <= 0 || n % 3)
		return -EINVAL;

	pdc_region_cnt = n / 3;
	pdc_region = FUNC0(pdc_region_cnt, sizeof(*pdc_region), GFP_KERNEL);
	if (!pdc_region) {
		pdc_region_cnt = 0;
		return -ENOMEM;
	}

	for (n = 0; n < pdc_region_cnt; n++) {
		ret = FUNC2(np, "qcom,pdc-ranges",
						 n * 3 + 0,
						 &pdc_region[n].pin_base);
		if (ret)
			return ret;
		ret = FUNC2(np, "qcom,pdc-ranges",
						 n * 3 + 1,
						 &pdc_region[n].parent_base);
		if (ret)
			return ret;
		ret = FUNC2(np, "qcom,pdc-ranges",
						 n * 3 + 2,
						 &pdc_region[n].cnt);
		if (ret)
			return ret;
	}

	return 0;
}
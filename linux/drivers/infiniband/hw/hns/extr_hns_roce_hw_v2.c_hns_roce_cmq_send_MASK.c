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
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cmq_desc {int dummy; } ;

/* Variables and functions */
 int CMD_RST_PRC_EBUSY ; 
 int CMD_RST_PRC_SUCCESS ; 
 int EBUSY ; 
 int FUNC0 (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ; 
 int FUNC1 (struct hns_roce_dev*) ; 

__attribute__((used)) static int FUNC2(struct hns_roce_dev *hr_dev,
			     struct hns_roce_cmq_desc *desc, int num)
{
	int retval;
	int ret;

	ret = FUNC1(hr_dev);
	if (ret == CMD_RST_PRC_SUCCESS)
		return 0;
	if (ret == CMD_RST_PRC_EBUSY)
		return -EBUSY;

	ret = FUNC0(hr_dev, desc, num);
	if (ret) {
		retval = FUNC1(hr_dev);
		if (retval == CMD_RST_PRC_SUCCESS)
			return 0;
		else if (retval == CMD_RST_PRC_EBUSY)
			return -EBUSY;
	}

	return ret;
}
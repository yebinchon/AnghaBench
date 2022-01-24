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
typedef  scalar_t__ u64 ;
struct hns_roce_query_fw_info {int /*<<< orphan*/  fw_ver; } ;
struct TYPE_2__ {scalar_t__ fw_ver; } ;
struct hns_roce_dev {TYPE_1__ caps; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_QUERY_FW_VER ; 
 int FUNC0 (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_cmq_desc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hns_roce_dev *hr_dev)
{
	struct hns_roce_query_fw_info *resp;
	struct hns_roce_cmq_desc desc;
	int ret;

	FUNC1(&desc, HNS_QUERY_FW_VER, true);
	ret = FUNC0(hr_dev, &desc, 1);
	if (ret)
		return ret;

	resp = (struct hns_roce_query_fw_info *)desc.data;
	hr_dev->caps.fw_ver = (u64)(FUNC2(resp->fw_ver));

	return 0;
}
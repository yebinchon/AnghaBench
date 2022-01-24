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
struct hns_roce_query_version {int /*<<< orphan*/  rocee_hw_version; } ;
struct hns_roce_dev {TYPE_1__* pci_dev; int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  hw_rev; } ;
struct hns_roce_cmq_desc {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS_ROCE_OPC_QUERY_HW_VER ; 
 int FUNC0 (struct hns_roce_dev*,struct hns_roce_cmq_desc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_cmq_desc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hns_roce_dev *hr_dev)
{
	struct hns_roce_query_version *resp;
	struct hns_roce_cmq_desc desc;
	int ret;

	FUNC1(&desc, HNS_ROCE_OPC_QUERY_HW_VER, true);
	ret = FUNC0(hr_dev, &desc, 1);
	if (ret)
		return ret;

	resp = (struct hns_roce_query_version *)desc.data;
	hr_dev->hw_rev = FUNC2(resp->rocee_hw_version);
	hr_dev->vendor_id = hr_dev->pci_dev->vendor;

	return 0;
}
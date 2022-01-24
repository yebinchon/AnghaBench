#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct efa_com_get_network_attr_result {int /*<<< orphan*/  mtu; int /*<<< orphan*/  addr; } ;
struct efa_com_dev {int /*<<< orphan*/  efa_dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  mtu; int /*<<< orphan*/  addr; } ;
struct TYPE_4__ {TYPE_1__ network_attr; } ;
struct efa_admin_get_feature_resp {TYPE_2__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  EFA_ADMIN_NETWORK_ATTR ; 
 int FUNC0 (struct efa_com_dev*,struct efa_admin_get_feature_resp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(struct efa_com_dev *edev,
			     struct efa_com_get_network_attr_result *result)
{
	struct efa_admin_get_feature_resp resp;
	int err;

	err = FUNC0(edev, &resp,
				  EFA_ADMIN_NETWORK_ATTR);
	if (err) {
		FUNC1(edev->efa_dev,
				      "Failed to get network attributes %d\n",
				      err);
		return err;
	}

	FUNC2(result->addr, resp.u.network_attr.addr,
	       sizeof(resp.u.network_attr.addr));
	result->mtu = resp.u.network_attr.mtu;

	return 0;
}
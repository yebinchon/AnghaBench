#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct TYPE_5__ {int sgid_index; int /*<<< orphan*/ * sgid_attr; } ;
struct rdma_ah_attr {scalar_t__ type; TYPE_1__ grh; } ;
struct TYPE_7__ {int /*<<< orphan*/  vlan; int /*<<< orphan*/  s_mac; } ;
struct TYPE_6__ {int /*<<< orphan*/  port_pd; } ;
struct TYPE_8__ {TYPE_3__ eth; TYPE_2__ ib; } ;
struct mlx4_ib_ah {TYPE_4__ av; } ;
struct ib_ah {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ RDMA_AH_ATTR_TYPE_ROCE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct ib_ah*,struct rdma_ah_attr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct rdma_ah_attr*) ; 
 struct mlx4_ib_ah* FUNC5 (struct ib_ah*) ; 

int FUNC6(struct ib_ah *ah, struct rdma_ah_attr *ah_attr,
			    int slave_sgid_index, u8 *s_mac, u16 vlan_tag)
{
	struct rdma_ah_attr slave_attr = *ah_attr;
	struct mlx4_ib_ah *mah = FUNC5(ah);
	int ret;

	slave_attr.grh.sgid_attr = NULL;
	slave_attr.grh.sgid_index = slave_sgid_index;
	ret = FUNC3(ah, &slave_attr, 0, NULL);
	if (ret)
		return ret;

	ah->type = ah_attr->type;

	/* get rid of force-loopback bit */
	mah->av.ib.port_pd &= FUNC1(0x7FFFFFFF);

	if (ah_attr->type == RDMA_AH_ATTR_TYPE_ROCE)
		FUNC2(mah->av.eth.s_mac, s_mac, 6);

	if (vlan_tag < 0x1000)
		vlan_tag |= (FUNC4(ah_attr) & 7) << 13;
	mah->av.eth.vlan = FUNC0(vlan_tag);

	return 0;
}
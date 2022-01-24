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
typedef  int u8 ;
typedef  int u32 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int gid_table_len; } ;
struct mthca_dev {TYPE_1__ limits; } ;
struct mthca_ah {scalar_t__ type; TYPE_2__* av; } ;
struct ib_ah {int /*<<< orphan*/  type; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {int msg_sr; int g_slid; int gid_index; int /*<<< orphan*/  dgid; int /*<<< orphan*/  hop_limit; int /*<<< orphan*/  sl_tclass_flowlabel; int /*<<< orphan*/  dlid; int /*<<< orphan*/  port_pd; } ;

/* Variables and functions */
 int ENOSYS ; 
 scalar_t__ MTHCA_AH_ON_HCA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct mthca_ah*) ; 
 int /*<<< orphan*/  FUNC4 (struct mthca_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 struct mthca_ah* FUNC12 (struct ib_ah*) ; 
 struct mthca_dev* FUNC13 (int /*<<< orphan*/ ) ; 

int FUNC14(struct ib_ah *ibah, struct rdma_ah_attr *attr)
{
	struct mthca_ah *ah   = FUNC12(ibah);
	struct mthca_dev *dev = FUNC13(ibah->device);
	u8 port_num = FUNC1(ah->av->port_pd) >> 24;

	/* Only implement for MAD and memfree ah for now. */
	if (ah->type == MTHCA_AH_ON_HCA)
		return -ENOSYS;

	FUNC2(attr, 0, sizeof *attr);
	attr->type = ibah->type;
	FUNC6(attr, FUNC0(ah->av->dlid));
	FUNC10(attr, FUNC1(ah->av->sl_tclass_flowlabel) >> 28);
	FUNC9(attr, port_num);
	FUNC11(attr,
				FUNC4(dev, ah->av->msg_sr & 0x7,
						 port_num));
	FUNC8(attr, ah->av->g_slid & 0x7F);
	if (FUNC3(ah)) {
		u32 tc_fl = FUNC1(ah->av->sl_tclass_flowlabel);

		FUNC7(attr, NULL,
				tc_fl & 0xfffff,
				ah->av->gid_index &
				(dev->limits.gid_table_len - 1),
				ah->av->hop_limit,
				(tc_fl >> 20) & 0xff);
		FUNC5(attr, ah->av->dgid);
	}

	return 0;
}
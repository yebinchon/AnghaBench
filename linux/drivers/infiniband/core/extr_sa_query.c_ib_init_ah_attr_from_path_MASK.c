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
typedef  int /*<<< orphan*/  u8 ;
struct sa_path_rec {scalar_t__ hop_limit; int /*<<< orphan*/  rate; int /*<<< orphan*/  sl; } ;
struct TYPE_2__ {int /*<<< orphan*/  dmac; } ;
struct rdma_ah_attr {TYPE_1__ roce; int /*<<< orphan*/  type; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  IB_LID_PERMISSIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ib_device*,int /*<<< orphan*/ ,struct sa_path_rec*,struct rdma_ah_attr*,struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ib_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct rdma_ah_attr*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct sa_path_rec*,struct ib_gid_attr const*) ; 
 int /*<<< orphan*/  FUNC15 (struct sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC16 (struct sa_path_rec*) ; 
 int /*<<< orphan*/  FUNC17 (struct sa_path_rec*) ; 
 scalar_t__ FUNC18 (struct sa_path_rec*) ; 
 scalar_t__ FUNC19 (struct sa_path_rec*) ; 

int FUNC20(struct ib_device *device, u8 port_num,
			      struct sa_path_rec *rec,
			      struct rdma_ah_attr *ah_attr,
			      const struct ib_gid_attr *gid_attr)
{
	int ret = 0;

	FUNC5(ah_attr, 0, sizeof(*ah_attr));
	ah_attr->type = FUNC6(device, port_num);
	FUNC12(ah_attr, rec->sl);
	FUNC11(ah_attr, port_num);
	FUNC13(ah_attr, rec->rate);

	if (FUNC19(rec)) {
		ret = FUNC14(rec, gid_attr);
		if (ret)
			return ret;

		FUNC4(ah_attr->roce.dmac, FUNC16(rec), ETH_ALEN);
	} else {
		FUNC8(ah_attr, FUNC1(FUNC15(rec)));
		if (FUNC18(rec) &&
		    FUNC7(ah_attr) == FUNC0(IB_LID_PERMISSIVE))
			FUNC9(ah_attr, true);

		FUNC10(ah_attr,
				      FUNC1(FUNC17(rec)) &
				      FUNC2(device, port_num));
	}

	if (rec->hop_limit > 0 || FUNC19(rec))
		ret = FUNC3(device, port_num,
					      rec, ah_attr, gid_attr);
	return ret;
}
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
typedef  union rdma_network_hdr {int dummy; } rdma_network_hdr ;
struct TYPE_2__ {scalar_t__ interface_id; } ;
union ib_gid {TYPE_1__ global; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct rdma_ah_attr {int /*<<< orphan*/  type; } ;
struct ib_wc {int wc_flags; int network_hdr_type; int vlan_id; int /*<<< orphan*/  dlid_path_bits; int /*<<< orphan*/  slid; int /*<<< orphan*/  sl; } ;
struct ib_grh {int /*<<< orphan*/  version_tclass_flow; } ;
struct ib_gid_attr {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum rdma_network_type { ____Placeholder_rdma_network_type } rdma_network_type ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;

/* Variables and functions */
 int EPROTOTYPE ; 
 int IB_GID_TYPE_IB ; 
 int /*<<< orphan*/  IB_SA_WELL_KNOWN_GUID ; 
 int IB_WC_GRH ; 
 int IB_WC_WITH_NETWORK_HDR_TYPE ; 
 int IB_WC_WITH_VLAN ; 
 scalar_t__ FUNC0 (struct ib_gid_attr const*) ; 
 int FUNC1 (struct ib_gid_attr const*) ; 
 int RDMA_NETWORK_IB ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct ib_gid_attr* FUNC4 (struct ib_device*,int /*<<< orphan*/ ,int,union ib_gid*,int) ; 
 int FUNC5 (union rdma_network_hdr*,int,union ib_gid*,union ib_gid*) ; 
 int FUNC6 (struct ib_device*,int /*<<< orphan*/ ,struct ib_grh const*) ; 
 int FUNC7 (int) ; 
 int FUNC8 (struct ib_device*,struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC9 (struct rdma_ah_attr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rdma_ah_attr*) ; 
 struct ib_gid_attr* FUNC18 (struct ib_device*,union ib_gid*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ib_gid_attr* FUNC19 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct rdma_ah_attr*,union ib_gid*,int,int,int,struct ib_gid_attr const*) ; 
 scalar_t__ FUNC21 (struct ib_device*,int /*<<< orphan*/ ) ; 

int FUNC22(struct ib_device *device, u8 port_num,
			    const struct ib_wc *wc, const struct ib_grh *grh,
			    struct rdma_ah_attr *ah_attr)
{
	u32 flow_class;
	int ret;
	enum rdma_network_type net_type = RDMA_NETWORK_IB;
	enum ib_gid_type gid_type = IB_GID_TYPE_IB;
	const struct ib_gid_attr *sgid_attr;
	int hoplimit = 0xff;
	union ib_gid dgid;
	union ib_gid sgid;

	FUNC10();

	FUNC9(ah_attr, 0, sizeof *ah_attr);
	ah_attr->type = FUNC11(device, port_num);
	if (FUNC16(device, port_num)) {
		if (wc->wc_flags & IB_WC_WITH_NETWORK_HDR_TYPE)
			net_type = wc->network_hdr_type;
		else
			net_type = FUNC6(device, port_num, grh);
		gid_type = FUNC7(net_type);
	}
	ret = FUNC5((union rdma_network_hdr *)grh, net_type,
					&sgid, &dgid);
	if (ret)
		return ret;

	FUNC15(ah_attr, wc->sl);
	FUNC14(ah_attr, port_num);

	if (FUNC21(device, port_num)) {
		u16 vlan_id = wc->wc_flags & IB_WC_WITH_VLAN ?
				wc->vlan_id : 0xffff;

		if (!(wc->wc_flags & IB_WC_GRH))
			return -EPROTOTYPE;

		sgid_attr = FUNC4(device, port_num,
						   vlan_id, &dgid,
						   gid_type);
		if (FUNC0(sgid_attr))
			return FUNC1(sgid_attr);

		flow_class = FUNC2(grh->version_tclass_flow);
		FUNC20(ah_attr,
					&sgid,
					flow_class & 0xFFFFF,
					hoplimit,
					(flow_class >> 20) & 0xFF,
					sgid_attr);

		ret = FUNC8(device, ah_attr);
		if (ret)
			FUNC17(ah_attr);

		return ret;
	} else {
		FUNC12(ah_attr, wc->slid);
		FUNC13(ah_attr, wc->dlid_path_bits);

		if ((wc->wc_flags & IB_WC_GRH) == 0)
			return 0;

		if (dgid.global.interface_id !=
					FUNC3(IB_SA_WELL_KNOWN_GUID)) {
			sgid_attr = FUNC18(
				device, &dgid, IB_GID_TYPE_IB, port_num, NULL);
		} else
			sgid_attr = FUNC19(device, port_num, 0);

		if (FUNC0(sgid_attr))
			return FUNC1(sgid_attr);
		flow_class = FUNC2(grh->version_tclass_flow);
		FUNC20(ah_attr,
					&sgid,
					flow_class & 0xFFFFF,
					hoplimit,
					(flow_class >> 20) & 0xFF,
					sgid_attr);

		return 0;
	}
}
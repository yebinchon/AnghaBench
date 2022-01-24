#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_12__ {TYPE_9__* sgid_attr; } ;
struct TYPE_11__ {int /*<<< orphan*/  dmac; } ;
struct rdma_ah_attr {scalar_t__ type; TYPE_3__ grh; TYPE_2__ roce; } ;
struct mlx5_qp_path {int dci_cfi_prio_sl; int ecn_dscp; int fl_free_ar; int grh_mlid; int static_rate; int port; int ackto_lt; int /*<<< orphan*/  rgid; int /*<<< orphan*/  tclass_flowlabel; int /*<<< orphan*/  hop_limit; scalar_t__ mgid_index; void* rlid; int /*<<< orphan*/  udp_sport; int /*<<< orphan*/  rmac; void* pkey_index; } ;
struct TYPE_16__ {scalar_t__ qp_type; int /*<<< orphan*/  pd; } ;
struct TYPE_15__ {int /*<<< orphan*/  sq; } ;
struct TYPE_14__ {scalar_t__ wqe_cnt; } ;
struct mlx5_ib_qp {TYPE_7__ ibqp; TYPE_6__ raw_packet_qp; TYPE_5__ sq; } ;
struct mlx5_ib_dev {TYPE_8__* mdev; } ;
struct ib_qp_attr {int alt_timeout; int timeout; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  alt_pkey_index; } ;
struct TYPE_13__ {int /*<<< orphan*/  raw; } ;
struct ib_global_route {int traffic_class; int flow_label; TYPE_4__ dgid; int /*<<< orphan*/  hop_limit; scalar_t__ sgid_index; } ;
typedef  enum ib_gid_type { ____Placeholder_ib_gid_type } ib_gid_type ;
struct TYPE_18__ {int gid_type; } ;
struct TYPE_17__ {TYPE_1__* port_caps; } ;
struct TYPE_10__ {scalar_t__ gid_table_len; } ;

/* Variables and functions */
 int EINVAL ; 
 int IB_AH_GRH ; 
 int IB_GID_TYPE_ROCE_UDP_ENCAP ; 
 scalar_t__ IB_QPT_RAW_PACKET ; 
 scalar_t__ IB_QPT_RC ; 
 scalar_t__ IB_QPT_UC ; 
 scalar_t__ IB_QPT_XRC_INI ; 
 scalar_t__ IB_QPT_XRC_TGT ; 
 int IB_QP_PKEY_INDEX ; 
 int IB_QP_TIMEOUT ; 
 int MLX5_PATH_FLAG_FL ; 
 int MLX5_PATH_FLAG_FREE_AR ; 
 scalar_t__ RDMA_AH_ATTR_TYPE_ROCE ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct mlx5_ib_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_ib_dev*,TYPE_9__*) ; 
 int FUNC5 (TYPE_8__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,scalar_t__) ; 
 int FUNC7 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC8 (struct rdma_ah_attr const*) ; 
 int FUNC9 (struct rdma_ah_attr const*) ; 
 int FUNC10 (struct rdma_ah_attr const*) ; 
 int /*<<< orphan*/  FUNC11 (struct rdma_ah_attr const*) ; 
 struct ib_global_route* FUNC12 (struct rdma_ah_attr const*) ; 

__attribute__((used)) static int FUNC13(struct mlx5_ib_dev *dev, struct mlx5_ib_qp *qp,
			 const struct rdma_ah_attr *ah,
			 struct mlx5_qp_path *path, u8 port, int attr_mask,
			 u32 path_flags, const struct ib_qp_attr *attr,
			 bool alt)
{
	const struct ib_global_route *grh = FUNC12(ah);
	int err;
	enum ib_gid_type gid_type;
	u8 ah_flags = FUNC7(ah);
	u8 sl = FUNC10(ah);

	if (attr_mask & IB_QP_PKEY_INDEX)
		path->pkey_index = FUNC0(alt ? attr->alt_pkey_index :
						     attr->pkey_index);

	if (ah_flags & IB_AH_GRH) {
		if (grh->sgid_index >=
		    dev->mdev->port_caps[port - 1].gid_table_len) {
			FUNC6("sgid_index (%u) too large. max is %d\n",
			       grh->sgid_index,
			       dev->mdev->port_caps[port - 1].gid_table_len);
			return -EINVAL;
		}
	}

	if (ah->type == RDMA_AH_ATTR_TYPE_ROCE) {
		if (!(ah_flags & IB_AH_GRH))
			return -EINVAL;

		FUNC3(path->rmac, ah->roce.dmac, sizeof(ah->roce.dmac));
		if (qp->ibqp.qp_type == IB_QPT_RC ||
		    qp->ibqp.qp_type == IB_QPT_UC ||
		    qp->ibqp.qp_type == IB_QPT_XRC_INI ||
		    qp->ibqp.qp_type == IB_QPT_XRC_TGT)
			path->udp_sport =
				FUNC4(dev, ah->grh.sgid_attr);
		path->dci_cfi_prio_sl = (sl & 0x7) << 4;
		gid_type = ah->grh.sgid_attr->gid_type;
		if (gid_type == IB_GID_TYPE_ROCE_UDP_ENCAP)
			path->ecn_dscp = (grh->traffic_class >> 2) & 0x3f;
	} else {
		path->fl_free_ar = (path_flags & MLX5_PATH_FLAG_FL) ? 0x80 : 0;
		path->fl_free_ar |=
			(path_flags & MLX5_PATH_FLAG_FREE_AR) ? 0x40 : 0;
		path->rlid = FUNC0(FUNC8(ah));
		path->grh_mlid = FUNC9(ah) & 0x7f;
		if (ah_flags & IB_AH_GRH)
			path->grh_mlid	|= 1 << 7;
		path->dci_cfi_prio_sl = sl & 0xf;
	}

	if (ah_flags & IB_AH_GRH) {
		path->mgid_index = grh->sgid_index;
		path->hop_limit  = grh->hop_limit;
		path->tclass_flowlabel =
			FUNC1((grh->traffic_class << 20) |
				    (grh->flow_label));
		FUNC3(path->rgid, grh->dgid.raw, 16);
	}

	err = FUNC2(dev, FUNC11(ah));
	if (err < 0)
		return err;
	path->static_rate = err;
	path->port = port;

	if (attr_mask & IB_QP_TIMEOUT)
		path->ackto_lt = (alt ? attr->alt_timeout : attr->timeout) << 3;

	if ((qp->ibqp.qp_type == IB_QPT_RAW_PACKET) && qp->sq.wqe_cnt)
		return FUNC5(dev->mdev,
						  &qp->raw_packet_qp.sq,
						  sl & 0xf, qp->ibqp.pd);

	return 0;
}
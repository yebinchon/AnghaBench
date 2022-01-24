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
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_ib_dev {int /*<<< orphan*/  dev; } ;
struct ib_wc {int dummy; } ;
struct ib_mad_hdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ mgmt_class; scalar_t__ attr_id; } ;
struct ib_mad {TYPE_1__ mad_hdr; } ;
struct ib_grh {int dummy; } ;
struct ib_device {int dummy; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int EINVAL ; 
 int IB_LINK_LAYER_ETHERNET ; 
 int IB_LINK_LAYER_INFINIBAND ; 
 int IB_MAD_RESULT_FAILURE ; 
 scalar_t__ IB_MGMT_CLASS_PERF_MGMT ; 
 scalar_t__ IB_PMA_CLASS_PORT_INFO ; 
 scalar_t__ IB_PMA_PORT_COUNTERS ; 
 scalar_t__ IB_PMA_PORT_COUNTERS_EXT ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct ib_device*,int,int /*<<< orphan*/ ,struct ib_wc const*,struct ib_grh const*,struct ib_mad const*,struct ib_mad*) ; 
 int FUNC2 (struct ib_device*,int,int /*<<< orphan*/ ,struct ib_wc const*,struct ib_grh const*,struct ib_mad const*,struct ib_mad*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ib_device*,int /*<<< orphan*/ ) ; 
 struct mlx4_ib_dev* FUNC5 (struct ib_device*) ; 

int FUNC6(struct ib_device *ibdev, int mad_flags, u8 port_num,
			const struct ib_wc *in_wc, const struct ib_grh *in_grh,
			const struct ib_mad_hdr *in, size_t in_mad_size,
			struct ib_mad_hdr *out, size_t *out_mad_size,
			u16 *out_mad_pkey_index)
{
	struct mlx4_ib_dev *dev = FUNC5(ibdev);
	const struct ib_mad *in_mad = (const struct ib_mad *)in;
	struct ib_mad *out_mad = (struct ib_mad *)out;
	enum rdma_link_layer link = FUNC4(ibdev, port_num);

	if (FUNC0(in_mad_size != sizeof(*in_mad) ||
			 *out_mad_size != sizeof(*out_mad)))
		return IB_MAD_RESULT_FAILURE;

	/* iboe_process_mad() which uses the HCA flow-counters to implement IB PMA
	 * queries, should be called only by VFs and for that specific purpose
	 */
	if (link == IB_LINK_LAYER_INFINIBAND) {
		if (FUNC3(dev->dev) &&
		    (in_mad->mad_hdr.mgmt_class == IB_MGMT_CLASS_PERF_MGMT &&
		     (in_mad->mad_hdr.attr_id == IB_PMA_PORT_COUNTERS ||
		      in_mad->mad_hdr.attr_id == IB_PMA_PORT_COUNTERS_EXT ||
		      in_mad->mad_hdr.attr_id == IB_PMA_CLASS_PORT_INFO)))
			return FUNC2(ibdev, mad_flags, port_num, in_wc,
						in_grh, in_mad, out_mad);

		return FUNC1(ibdev, mad_flags, port_num, in_wc,
				      in_grh, in_mad, out_mad);
	}

	if (link == IB_LINK_LAYER_ETHERNET)
		return FUNC2(ibdev, mad_flags, port_num, in_wc,
					in_grh, in_mad, out_mad);

	return -EINVAL;
}
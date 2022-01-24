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
struct mlx4_ib_dev {int num_ports; struct ib_mad_agent*** send_agent; int /*<<< orphan*/  ib_dev; } ;
struct ib_mad_agent {int dummy; } ;
typedef  enum rdma_link_layer { ____Placeholder_rdma_link_layer } rdma_link_layer ;

/* Variables and functions */
 int IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  IB_QPT_GSI ; 
 int /*<<< orphan*/  IB_QPT_SMI ; 
 scalar_t__ FUNC0 (struct ib_mad_agent*) ; 
 int FUNC1 (struct ib_mad_agent*) ; 
 struct ib_mad_agent* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_mad_agent*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  send_handler ; 

int FUNC5(struct mlx4_ib_dev *dev)
{
	struct ib_mad_agent *agent;
	int p, q;
	int ret;
	enum rdma_link_layer ll;

	for (p = 0; p < dev->num_ports; ++p) {
		ll = FUNC4(&dev->ib_dev, p + 1);
		for (q = 0; q <= 1; ++q) {
			if (ll == IB_LINK_LAYER_INFINIBAND) {
				agent = FUNC2(&dev->ib_dev, p + 1,
							      q ? IB_QPT_GSI : IB_QPT_SMI,
							      NULL, 0, send_handler,
							      NULL, NULL, 0);
				if (FUNC0(agent)) {
					ret = FUNC1(agent);
					goto err;
				}
				dev->send_agent[p][q] = agent;
			} else
				dev->send_agent[p][q] = NULL;
		}
	}

	return 0;

err:
	for (p = 0; p < dev->num_ports; ++p)
		for (q = 0; q <= 1; ++q)
			if (dev->send_agent[p][q])
				FUNC3(dev->send_agent[p][q]);

	return ret;
}
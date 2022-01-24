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
struct rdma_ah_attr {int /*<<< orphan*/  port_num; int /*<<< orphan*/  type; } ;
struct ib_port_attr {int /*<<< orphan*/  subnet_prefix; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  OPA_DEFAULT_GID_PREFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_AH_ATTR_TYPE_IB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct rdma_ah_attr*) ; 
 int /*<<< orphan*/  FUNC4 (struct rdma_ah_attr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rdma_ah_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ib_device *dev,
				  struct rdma_ah_attr *ib,
				  struct rdma_ah_attr *opa)
{
	struct ib_port_attr port_attr;
	int ret = 0;

	/* Do structure copy and the over-write fields */
	*ib = *opa;

	ib->type = RDMA_AH_ATTR_TYPE_IB;
	FUNC4(ib, NULL, 0, 0, 1, 0);

	if (FUNC2(dev, opa->port_num, &port_attr)) {
		/* Set to default subnet to indicate error */
		FUNC6(ib, OPA_DEFAULT_GID_PREFIX);
		ret = -EINVAL;
	} else {
		FUNC6(ib,
					  FUNC1(port_attr.subnet_prefix));
	}
	FUNC5(ib, FUNC0(FUNC3(opa)));
	return ret;
}
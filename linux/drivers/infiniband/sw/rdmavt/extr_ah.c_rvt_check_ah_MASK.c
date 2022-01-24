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
typedef  scalar_t__ u8 ;
struct TYPE_3__ {int (* check_ah ) (struct ib_device*,struct rdma_ah_attr*) ;} ;
struct rvt_dev_info {TYPE_1__ driver_f; } ;
struct rdma_ah_attr {int dummy; } ;
struct ib_port_attr {scalar_t__ gid_tbl_len; } ;
struct ib_device {int phys_port_cnt; } ;
struct TYPE_4__ {scalar_t__ sgid_index; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ IB_AH_GRH ; 
 scalar_t__ IB_RATE_PORT_CURRENT ; 
 int FUNC0 (struct ib_device*,int,struct ib_port_attr*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct rvt_dev_info* FUNC2 (struct ib_device*) ; 
 scalar_t__ FUNC3 (struct rdma_ah_attr*) ; 
 int FUNC4 (struct rdma_ah_attr*) ; 
 scalar_t__ FUNC5 (struct rdma_ah_attr*) ; 
 TYPE_2__* FUNC6 (struct rdma_ah_attr*) ; 
 int FUNC7 (struct ib_device*,struct rdma_ah_attr*) ; 

int FUNC8(struct ib_device *ibdev,
		 struct rdma_ah_attr *ah_attr)
{
	int err;
	int port_num = FUNC4(ah_attr);
	struct ib_port_attr port_attr;
	struct rvt_dev_info *rdi = FUNC2(ibdev);
	u8 ah_flags = FUNC3(ah_attr);
	u8 static_rate = FUNC5(ah_attr);

	err = FUNC0(ibdev, port_num, &port_attr);
	if (err)
		return -EINVAL;
	if (port_num < 1 ||
	    port_num > ibdev->phys_port_cnt)
		return -EINVAL;
	if (static_rate != IB_RATE_PORT_CURRENT &&
	    FUNC1(static_rate) < 0)
		return -EINVAL;
	if ((ah_flags & IB_AH_GRH) &&
	    FUNC6(ah_attr)->sgid_index >= port_attr.gid_tbl_len)
		return -EINVAL;
	if (rdi->driver_f.check_ah)
		return rdi->driver_f.check_ah(ibdev, ah_attr);
	return 0;
}
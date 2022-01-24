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
typedef  int /*<<< orphan*/  u8 ;
struct rdma_hw_stats {int dummy; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RDMA_HW_STATS_DEFAULT_LIFESPAN ; 
 int /*<<< orphan*/  efa_stats_names ; 
 struct rdma_hw_stats* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct rdma_hw_stats *FUNC2(struct ib_device *ibdev, u8 port_num)
{
	return FUNC1(efa_stats_names,
					  FUNC0(efa_stats_names),
					  RDMA_HW_STATS_DEFAULT_LIFESPAN);
}
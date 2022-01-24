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
typedef  int /*<<< orphan*/  u64 ;
struct rdma_hw_stats {int /*<<< orphan*/  value; } ;
struct ib_device {int dummy; } ;
struct hfi1_ibport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  hfi1_stats ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 size_t num_dev_cntrs ; 
 int num_driver_cntrs ; 
 int num_port_cntrs ; 
 int /*<<< orphan*/  FUNC5 (struct hfi1_ibport*) ; 
 struct hfi1_ibport* FUNC6 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct ib_device *ibdev, struct rdma_hw_stats *stats,
			u8 port, int index)
{
	u64 *values;
	int count;

	if (!port) {
		u64 *stats = (u64 *)&hfi1_stats;
		int i;

		FUNC1(FUNC0(ibdev), NULL, &values);
		values[num_dev_cntrs] = FUNC3();
		for (i = 1; i < num_driver_cntrs; i++)
			values[num_dev_cntrs + i] = stats[i];
		count = num_dev_cntrs + num_driver_cntrs;
	} else {
		struct hfi1_ibport *ibp = FUNC6(ibdev, port);

		FUNC2(FUNC5(ibp), NULL, &values);
		count = num_port_cntrs;
	}

	FUNC4(stats->value, values, count * sizeof(u64));
	return count;
}
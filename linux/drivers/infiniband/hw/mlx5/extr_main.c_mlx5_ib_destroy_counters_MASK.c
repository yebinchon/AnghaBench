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
struct mlx5_ib_mcounters {scalar_t__ hw_cntrs_hndl; } ;
struct ib_counters {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_counters*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_ib_mcounters*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct mlx5_ib_mcounters* FUNC3 (struct ib_counters*) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct ib_counters *counters)
{
	struct mlx5_ib_mcounters *mcounters = FUNC3(counters);

	FUNC0(counters);
	if (mcounters->hw_cntrs_hndl)
		FUNC2(FUNC4(counters->device)->mdev,
				mcounters->hw_cntrs_hndl);

	FUNC1(mcounters);

	return 0;
}
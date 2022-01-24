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
struct mlx5_ib_mcounters {int /*<<< orphan*/ * hw_cntrs_hndl; scalar_t__ cntrs_max_index; } ;
struct mlx5_ib_flow_counters_desc {int dummy; } ;
struct mlx5_ib_flow_counters_data {int ncounters; int /*<<< orphan*/  counters_data; } ;
struct mlx5_ib_create_flow {scalar_t__ ncounters_data; struct mlx5_ib_flow_counters_data* data; } ;
struct ib_counters {int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_COUNTERS_NUM ; 
 int /*<<< orphan*/  MLX5_IB_COUNTERS_FLOW ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct mlx5_ib_flow_counters_desc*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ib_counters*,int /*<<< orphan*/ ,struct mlx5_ib_flow_counters_desc*,int) ; 
 struct mlx5_ib_flow_counters_desc* FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_ib_flow_counters_desc*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct mlx5_ib_mcounters* FUNC8 (struct ib_counters*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct ib_counters *ibcounters,
				  struct mlx5_ib_create_flow *ucmd)
{
	struct mlx5_ib_mcounters *mcounters = FUNC8(ibcounters);
	struct mlx5_ib_flow_counters_data *cntrs_data = NULL;
	struct mlx5_ib_flow_counters_desc *desc_data = NULL;
	bool hw_hndl = false;
	int ret = 0;

	if (ucmd && ucmd->ncounters_data != 0) {
		cntrs_data = ucmd->data;
		if (cntrs_data->ncounters > MAX_COUNTERS_NUM)
			return -EINVAL;

		desc_data = FUNC4(cntrs_data->ncounters,
				    sizeof(*desc_data),
				    GFP_KERNEL);
		if (!desc_data)
			return  -ENOMEM;

		if (FUNC2(desc_data,
				   FUNC10(cntrs_data->counters_data),
				   sizeof(*desc_data) * cntrs_data->ncounters)) {
			ret = -EFAULT;
			goto free;
		}
	}

	if (!mcounters->hw_cntrs_hndl) {
		mcounters->hw_cntrs_hndl = FUNC6(
			FUNC9(ibcounters->device)->mdev, false);
		if (FUNC0(mcounters->hw_cntrs_hndl)) {
			ret = FUNC1(mcounters->hw_cntrs_hndl);
			goto free;
		}
		hw_hndl = true;
	}

	if (desc_data) {
		/* counters already bound to at least one flow */
		if (mcounters->cntrs_max_index) {
			ret = -EINVAL;
			goto free_hndl;
		}

		ret = FUNC3(ibcounters,
					       MLX5_IB_COUNTERS_FLOW,
					       desc_data,
					       cntrs_data->ncounters);
		if (ret)
			goto free_hndl;

	} else if (!mcounters->cntrs_max_index) {
		/* counters not bound yet, must have udata passed */
		ret = -EINVAL;
		goto free_hndl;
	}

	return 0;

free_hndl:
	if (hw_hndl) {
		FUNC7(FUNC9(ibcounters->device)->mdev,
				mcounters->hw_cntrs_hndl);
		mcounters->hw_cntrs_hndl = NULL;
	}
free:
	FUNC5(desc_data);
	return ret;
}
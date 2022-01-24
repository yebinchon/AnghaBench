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
struct stp_policy_node {int dummy; } ;
struct stm_output {int nr_chans; unsigned int master; unsigned int channel; int /*<<< orphan*/  lock; } ;
struct stm_device {int /*<<< orphan*/  mc_lock; int /*<<< orphan*/  dev; TYPE_2__* pdrv; TYPE_1__* data; } ;
struct TYPE_4__ {int (* output_open ) (void*,struct stm_output*) ;} ;
struct TYPE_3__ {unsigned int sw_nchannels; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct stm_device*,unsigned int,unsigned int*,unsigned int,unsigned int*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct stm_device*,struct stm_output*) ; 
 int /*<<< orphan*/  FUNC6 (struct stp_policy_node*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 
 void* FUNC7 (struct stp_policy_node*) ; 
 int FUNC8 (void*,struct stm_output*) ; 

__attribute__((used)) static int FUNC9(struct stm_device *stm, unsigned int width,
			     struct stp_policy_node *policy_node,
			     struct stm_output *output)
{
	unsigned int midx, cidx, mend, cend;
	int ret = -EINVAL;

	if (width > stm->data->sw_nchannels)
		return -EINVAL;

	/* We no longer accept policy_node==NULL here */
	if (FUNC0(!policy_node))
		return -EINVAL;

	/*
	 * Also, the caller holds reference to policy_node, so it won't
	 * disappear on us.
	 */
	FUNC6(policy_node, &midx, &mend, &cidx, &cend);

	FUNC2(&stm->mc_lock);
	FUNC2(&output->lock);
	/* output is already assigned -- shouldn't happen */
	if (FUNC0(output->nr_chans))
		goto unlock;

	ret = FUNC4(stm, width, &midx, mend, &cidx, cend);
	if (ret < 0)
		goto unlock;

	output->master = midx;
	output->channel = cidx;
	output->nr_chans = width;
	if (stm->pdrv->output_open) {
		void *priv = FUNC7(policy_node);

		if (FUNC0(!priv))
			goto unlock;

		/* configfs subsys mutex is held by the caller */
		ret = stm->pdrv->output_open(priv, output);
		if (ret)
			goto unlock;
	}

	FUNC5(stm, output);
	FUNC1(&stm->dev, "assigned %u:%u (+%u)\n", midx, cidx, width);

	ret = 0;
unlock:
	if (ret)
		output->nr_chans = 0;

	FUNC3(&output->lock);
	FUNC3(&stm->mc_lock);

	return ret;
}
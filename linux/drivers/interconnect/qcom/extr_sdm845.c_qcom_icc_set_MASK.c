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
struct tcs_cmd {int dummy; } ;
struct qcom_icc_provider {int num_bcms; int /*<<< orphan*/  dev; TYPE_1__** bcms; } ;
struct list_head {int dummy; } ;
struct icc_node {int /*<<< orphan*/  provider; } ;
struct TYPE_2__ {scalar_t__* vote_x; scalar_t__* vote_y; int /*<<< orphan*/  list; scalar_t__ dirty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct list_head*) ; 
 size_t QCOM_ICC_BUCKET_AMC ; 
 size_t QCOM_ICC_BUCKET_SLEEP ; 
 size_t QCOM_ICC_BUCKET_WAKE ; 
 int /*<<< orphan*/  RPMH_ACTIVE_ONLY_STATE ; 
 int /*<<< orphan*/  RPMH_SLEEP_STATE ; 
 int /*<<< orphan*/  RPMH_WAKE_ONLY_STATE ; 
 int SDM845_MAX_BCMS ; 
 int SDM845_MAX_VCD ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct list_head*) ; 
 scalar_t__ FUNC3 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tcs_cmd*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*,size_t,struct tcs_cmd*,int*) ; 
 struct qcom_icc_provider* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct icc_node *src, struct icc_node *dst)
{
	struct qcom_icc_provider *qp;
	struct icc_node *node;
	struct tcs_cmd cmds[SDM845_MAX_BCMS];
	struct list_head commit_list;
	int commit_idx[SDM845_MAX_VCD];
	int ret = 0, i;

	if (!src)
		node = dst;
	else
		node = src;

	qp = FUNC8(node->provider);

	FUNC0(&commit_list);

	for (i = 0; i < qp->num_bcms; i++) {
		if (qp->bcms[i]->dirty) {
			FUNC1(qp->bcms[i]);
			FUNC2(&qp->bcms[i]->list, &commit_list);
		}
	}

	/*
	 * Construct the command list based on a pre ordered list of BCMs
	 * based on VCD.
	 */
	FUNC7(&commit_list, QCOM_ICC_BUCKET_AMC, cmds, commit_idx);

	if (!commit_idx[0])
		return ret;

	ret = FUNC5(qp->dev);
	if (ret) {
		FUNC4("Error invalidating RPMH client (%d)\n", ret);
		return ret;
	}

	ret = FUNC6(qp->dev, RPMH_ACTIVE_ONLY_STATE,
			       cmds, commit_idx);
	if (ret) {
		FUNC4("Error sending AMC RPMH requests (%d)\n", ret);
		return ret;
	}

	FUNC0(&commit_list);

	for (i = 0; i < qp->num_bcms; i++) {
		/*
		 * Only generate WAKE and SLEEP commands if a resource's
		 * requirements change as the execution environment transitions
		 * between different power states.
		 */
		if (qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_WAKE] !=
		    qp->bcms[i]->vote_x[QCOM_ICC_BUCKET_SLEEP] ||
		    qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_WAKE] !=
		    qp->bcms[i]->vote_y[QCOM_ICC_BUCKET_SLEEP]) {
			FUNC2(&qp->bcms[i]->list, &commit_list);
		}
	}

	if (FUNC3(&commit_list))
		return ret;

	FUNC7(&commit_list, QCOM_ICC_BUCKET_WAKE, cmds, commit_idx);

	ret = FUNC6(qp->dev, RPMH_WAKE_ONLY_STATE, cmds, commit_idx);
	if (ret) {
		FUNC4("Error sending WAKE RPMH requests (%d)\n", ret);
		return ret;
	}

	FUNC7(&commit_list, QCOM_ICC_BUCKET_SLEEP, cmds, commit_idx);

	ret = FUNC6(qp->dev, RPMH_SLEEP_STATE, cmds, commit_idx);
	if (ret) {
		FUNC4("Error sending SLEEP RPMH requests (%d)\n", ret);
		return ret;
	}

	return ret;
}
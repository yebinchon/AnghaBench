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
typedef  int u8 ;
struct TYPE_2__ {int mst_state; int /*<<< orphan*/  lock; struct drm_dp_aux* aux; } ;
struct nv50_mstm {TYPE_1__ mgr; } ;
struct drm_dp_aux {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DP_MSTM_CAP ; 
 int /*<<< orphan*/  DP_MSTM_CTRL ; 
 int DP_MST_CAP ; 
 int DP_MST_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct drm_dp_aux*,int /*<<< orphan*/ ,int*) ; 
 int FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct nv50_mstm*,int,int) ; 

int
FUNC6(struct nv50_mstm *mstm, u8 dpcd[8], int allow)
{
	struct drm_dp_aux *aux;
	int ret;
	bool old_state, new_state;
	u8 mstm_ctrl;

	if (!mstm)
		return 0;

	FUNC3(&mstm->mgr.lock);

	old_state = mstm->mgr.mst_state;
	new_state = old_state;
	aux = mstm->mgr.aux;

	if (old_state) {
		/* Just check that the MST hub is still as we expect it */
		ret = FUNC1(aux, DP_MSTM_CTRL, &mstm_ctrl);
		if (ret < 0 || !(mstm_ctrl & DP_MST_EN)) {
			FUNC0("Hub gone, disabling MST topology\n");
			new_state = false;
		}
	} else if (dpcd[0] >= 0x12) {
		ret = FUNC1(aux, DP_MSTM_CAP, &dpcd[1]);
		if (ret < 0)
			goto probe_error;

		if (!(dpcd[1] & DP_MST_CAP))
			dpcd[0] = 0x11;
		else
			new_state = allow;
	}

	if (new_state == old_state) {
		FUNC4(&mstm->mgr.lock);
		return new_state;
	}

	ret = FUNC5(mstm, dpcd[0], new_state);
	if (ret)
		goto probe_error;

	FUNC4(&mstm->mgr.lock);

	ret = FUNC2(&mstm->mgr, new_state);
	if (ret)
		return FUNC5(mstm, dpcd[0], 0);

	return new_state;

probe_error:
	FUNC4(&mstm->mgr.lock);
	return ret;
}
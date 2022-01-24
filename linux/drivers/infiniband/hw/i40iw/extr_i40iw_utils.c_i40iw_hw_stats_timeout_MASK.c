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
typedef  size_t u16 ;
struct timer_list {int dummy; } ;
struct i40iw_vsi_pestat {int /*<<< orphan*/  stats_timer; int /*<<< orphan*/  lock; int /*<<< orphan*/  hw_stats; struct i40iw_sc_vsi* vsi; } ;
struct i40iw_sc_vsi {struct i40iw_sc_dev* dev; } ;
struct i40iw_sc_dev {TYPE_1__** vf_dev; } ;
struct TYPE_2__ {struct i40iw_vsi_pestat pestat; scalar_t__ stats_initialized; } ;

/* Variables and functions */
 size_t I40IW_MAX_PE_ENABLED_VF_COUNT ; 
 int /*<<< orphan*/  STATS_TIMER_DELAY ; 
 struct i40iw_vsi_pestat* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct i40iw_vsi_pestat*,int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct i40iw_vsi_pestat* pf_devstat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  stats_timer ; 

__attribute__((used)) static void FUNC6(struct timer_list *t)
{
	struct i40iw_vsi_pestat *pf_devstat = FUNC0(pf_devstat, t,
						       stats_timer);
	struct i40iw_sc_vsi *sc_vsi = pf_devstat->vsi;
	struct i40iw_sc_dev *pf_dev = sc_vsi->dev;
	struct i40iw_vsi_pestat *vf_devstat = NULL;
	u16 iw_vf_idx;
	unsigned long flags;

	/*PF*/
	FUNC1(pf_devstat, &pf_devstat->hw_stats);

	for (iw_vf_idx = 0; iw_vf_idx < I40IW_MAX_PE_ENABLED_VF_COUNT; iw_vf_idx++) {
		FUNC4(&pf_devstat->lock, flags);
		if (pf_dev->vf_dev[iw_vf_idx]) {
			if (pf_dev->vf_dev[iw_vf_idx]->stats_initialized) {
				vf_devstat = &pf_dev->vf_dev[iw_vf_idx]->pestat;
				FUNC1(vf_devstat, &vf_devstat->hw_stats);
			}
		}
		FUNC5(&pf_devstat->lock, flags);
	}

	FUNC2(&pf_devstat->stats_timer,
		  jiffies + FUNC3(STATS_TIMER_DELAY));
}
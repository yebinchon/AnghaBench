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
typedef  int u32 ;
struct i40iw_sc_cqp {int /*<<< orphan*/  sdbuf; TYPE_1__* dev; } ;
typedef  enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {int /*<<< orphan*/  hw; scalar_t__ is_pf; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_PFPE_CCQPHIGH ; 
 int /*<<< orphan*/  I40E_PFPE_CCQPLOW ; 
 int I40E_PFPE_CCQPSTATUS ; 
 int /*<<< orphan*/  I40E_VFPE_CCQPHIGH1 ; 
 int /*<<< orphan*/  I40E_VFPE_CCQPLOW1 ; 
 int I40E_VFPE_CCQPSTATUS1 ; 
 scalar_t__ I40IW_DONE_COUNT ; 
 int I40IW_ERR_TIMEOUT ; 
 int /*<<< orphan*/  I40IW_SLEEP_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum i40iw_status_code FUNC4(struct i40iw_sc_cqp *cqp)
{
	u32 cnt = 0, val = 1;
	enum i40iw_status_code ret_code = 0;
	u32 cqpstat_addr;

	if (cqp->dev->is_pf) {
		FUNC2(cqp->dev->hw, I40E_PFPE_CCQPHIGH, 0);
		FUNC2(cqp->dev->hw, I40E_PFPE_CCQPLOW, 0);
		cqpstat_addr = I40E_PFPE_CCQPSTATUS;
	} else {
		FUNC2(cqp->dev->hw, I40E_VFPE_CCQPHIGH1, 0);
		FUNC2(cqp->dev->hw, I40E_VFPE_CCQPLOW1, 0);
		cqpstat_addr = I40E_VFPE_CCQPSTATUS1;
	}
	do {
		if (cnt++ > I40IW_DONE_COUNT) {
			ret_code = I40IW_ERR_TIMEOUT;
			break;
		}
		FUNC3(I40IW_SLEEP_COUNT);
		val = FUNC1(cqp->dev->hw, cqpstat_addr);
	} while (val);

	FUNC0(cqp->dev->hw, &cqp->sdbuf);
	return ret_code;
}
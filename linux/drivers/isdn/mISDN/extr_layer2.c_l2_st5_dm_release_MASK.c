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
struct sk_buff {int dummy; } ;
struct layer2 {scalar_t__ tm; int /*<<< orphan*/  flag; int /*<<< orphan*/  i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  FLG_LAPB ; 
 int /*<<< orphan*/  MDL_STATUS_DOWN_IND ; 
 int /*<<< orphan*/  PH_DEACTIVATE_REQ ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 scalar_t__ FUNC0 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC7 (struct layer2*,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;
	struct sk_buff *skb = arg;

	if (FUNC0(l2, skb)) {
		FUNC7(l2, 7);
		if (!FUNC8(FLG_L3_INIT, &l2->flag))
			FUNC5(&l2->i_queue);
		if (FUNC8(FLG_LAPB, &l2->flag))
			FUNC3(l2, PH_DEACTIVATE_REQ,
				      FUNC1(l2), 0, NULL);
		FUNC6(l2);
		FUNC4(fi, ST_L2_4);
		if (l2->tm)
			FUNC2(l2, MDL_STATUS_DOWN_IND, 0);
	}
}
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
struct layer2 {scalar_t__ vs; scalar_t__ va; scalar_t__ tm; int /*<<< orphan*/  i_queue; int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; scalar_t__ sow; scalar_t__ vr; int /*<<< orphan*/  flag; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int DL_ESTABLISH_CNF ; 
 int DL_ESTABLISH_IND ; 
 int /*<<< orphan*/  EV_L2_ACK_PULL ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  FLG_PEND_REL ; 
 int /*<<< orphan*/  MDL_STATUS_UP_IND ; 
 int /*<<< orphan*/  ST_L2_7 ; 
 scalar_t__ FUNC0 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct FsmInst*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct FsmInst*,int,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct FsmInst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct layer2*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC14(struct FsmInst *fi, int event, void *arg)
{
	struct layer2	*l2 = fi->userdata;
	struct sk_buff	*skb = arg;
	int pr = -1;

	if (!FUNC2(l2, skb)) {
		FUNC4(fi, event, arg);
		return;
	}
	FUNC1(skb);
	if (FUNC13(FLG_PEND_REL, &l2->flag))
		FUNC3(fi, event, NULL);
	if (FUNC13(FLG_L3_INIT, &l2->flag)) {
		pr = DL_ESTABLISH_CNF;
	} else if (l2->vs != l2->va) {
		FUNC11(&l2->i_queue);
		pr = DL_ESTABLISH_IND;
	}
	FUNC12(l2, 5);
	l2->vr = 0;
	l2->vs = 0;
	l2->va = 0;
	l2->sow = 0;
	FUNC8(fi, ST_L2_7);
	FUNC7(&l2->t203, l2->T203, EV_L2_T203, NULL, 4);
	if (pr != -1)
		FUNC6(l2, pr, 0, NULL);

	if (FUNC10(&l2->i_queue) && FUNC0(l2))
		FUNC9(fi, EV_L2_ACK_PULL, NULL);

	if (l2->tm)
		FUNC5(l2, MDL_STATUS_UP_IND, 0);
}
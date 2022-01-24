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
struct layer2 {scalar_t__ vs; scalar_t__ va; int /*<<< orphan*/  i_queue; int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; scalar_t__ sow; scalar_t__ vr; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_ESTABLISH_IND ; 
 int /*<<< orphan*/  EV_L2_ACK_PULL ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 int /*<<< orphan*/  RSP ; 
 int /*<<< orphan*/  ST_L2_7 ; 
 int UA ; 
 scalar_t__ FUNC0 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*) ; 
 int FUNC2 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct layer2*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct FsmInst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (struct layer2*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct layer2*,int) ; 

__attribute__((used)) static void
FUNC12(struct FsmInst *fi, int event, void *arg)
{
	struct layer2	*l2 = fi->userdata;
	struct sk_buff	*skb = arg;
	int		est = 0;

	FUNC8(l2, skb, UA | FUNC2(l2, skb), RSP);

	FUNC3(l2, MDL_ERROR_IND, (void *) 'F');

	if (l2->vs != l2->va) {
		FUNC10(&l2->i_queue);
		est = 1;
	}

	FUNC1(l2);
	l2->vs = 0;
	l2->va = 0;
	l2->vr = 0;
	l2->sow = 0;
	FUNC5(fi, ST_L2_7);
	FUNC11(l2, 3);
	FUNC7(&l2->t203, l2->T203, EV_L2_T203, NULL, 3);

	if (est)
		FUNC4(l2, DL_ESTABLISH_IND, 0, NULL);
/*		mISDN_queue_data(&l2->inst, l2->inst.id | MSG_BROADCAST,
 *		    MGR_SHORTSTATUS | INDICATION, SSTATUS_L2_ESTABLISHED,
 *		    0, NULL, 0);
 */
	if (FUNC9(&l2->i_queue) && FUNC0(l2))
		FUNC6(fi, EV_L2_ACK_PULL, NULL);
}
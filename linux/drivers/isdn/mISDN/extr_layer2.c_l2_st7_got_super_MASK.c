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
struct sk_buff {int* data; } ;
struct layer2 {unsigned int vs; unsigned int va; int /*<<< orphan*/  i_queue; int /*<<< orphan*/  t203; int /*<<< orphan*/  T203; int /*<<< orphan*/  l2m; int /*<<< orphan*/  flag; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_L2_ACK_PULL ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_ORIG ; 
 scalar_t__ FUNC0 (int*,struct layer2*) ; 
 scalar_t__ FUNC1 (int*,struct layer2*) ; 
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 int REJ ; 
 int RNR ; 
 int RR ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct layer2*,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC9 (struct layer2*,unsigned int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct FsmInst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC15 (struct layer2*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC17 (struct layer2*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct layer2*,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC22(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;
	struct sk_buff *skb = arg;
	int PollFlag, rsp, typ = RR;
	unsigned int nr;

	rsp = *skb->data & 0x2;
	if (FUNC21(FLG_ORIG, &l2->flag))
		rsp = !rsp;

	FUNC18(skb, FUNC6(l2));
	if (FUNC1(skb->data, l2)) {
		FUNC16(l2);
		typ = RNR;
	} else
		FUNC2(l2);
	if (FUNC0(skb->data, l2))
		typ = REJ;

	if (FUNC21(FLG_MOD128, &l2->flag)) {
		PollFlag = (skb->data[1] & 0x1) == 0x1;
		nr = skb->data[1] >> 1;
	} else {
		PollFlag = (skb->data[0] & 0x10);
		nr = (skb->data[0] >> 5) & 0x7;
	}
	FUNC3(skb);

	if (PollFlag) {
		if (rsp)
			FUNC8(l2, MDL_ERROR_IND, (void *) 'A');
		else
			FUNC4(l2);
	}
	if (FUNC9(l2, nr)) {
		if (typ == REJ) {
			FUNC17(l2, nr);
			FUNC5(l2, nr);
			FUNC20(l2, 10);
			if (FUNC10(&l2->t203, l2->T203,
					      EV_L2_T203, NULL, 6))
				FUNC7(&l2->l2m, "Restart T203 ST7 REJ");
		} else if ((nr == l2->vs) && (typ == RR)) {
			FUNC17(l2, nr);
			FUNC20(l2, 11);
			FUNC13(&l2->t203, l2->T203,
					      EV_L2_T203, NULL, 7);
		} else if ((l2->va != nr) || (typ == RNR)) {
			FUNC17(l2, nr);
			if (typ != RR)
				FUNC11(&l2->t203, 9);
			FUNC15(l2, 12);
		}
		if (FUNC19(&l2->i_queue) && (typ == RR))
			FUNC12(fi, EV_L2_ACK_PULL, NULL);
	} else
		FUNC14(fi);
}
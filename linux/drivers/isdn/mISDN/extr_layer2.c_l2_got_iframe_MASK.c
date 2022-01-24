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
typedef  int u_int ;
struct sk_buff {int* data; } ;
struct layer2 {int vr; int vs; int va; int /*<<< orphan*/  flag; int /*<<< orphan*/  i_queue; int /*<<< orphan*/  T203; int /*<<< orphan*/  t203; } ;
struct FsmInst {scalar_t__ state; struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_DATA_IND ; 
 int /*<<< orphan*/  EV_L2_ACK_PULL ; 
 int /*<<< orphan*/  EV_L2_T203 ; 
 int /*<<< orphan*/  FLG_ACK_PEND ; 
 int /*<<< orphan*/  FLG_MOD128 ; 
 int /*<<< orphan*/  FLG_OWN_BUSY ; 
 int /*<<< orphan*/  FLG_PEER_BUSY ; 
 int /*<<< orphan*/  FLG_REJEXC ; 
 int /*<<< orphan*/  REJ ; 
 int /*<<< orphan*/  RR ; 
 int /*<<< orphan*/  RSP ; 
 scalar_t__ ST_L2_7 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*) ; 
 int FUNC3 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC4 (struct layer2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*,int /*<<< orphan*/ ,struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct layer2*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct FsmInst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (struct FsmInst*) ; 
 int /*<<< orphan*/  FUNC10 (struct layer2*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct layer2*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct layer2*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC18(struct FsmInst *fi, int event, void *arg)
{
	struct layer2	*l2 = fi->userdata;
	struct sk_buff	*skb = arg;
	int		PollFlag, i;
	u_int		ns, nr;

	i = FUNC3(l2);
	if (FUNC17(FLG_MOD128, &l2->flag)) {
		PollFlag = ((skb->data[i + 1] & 0x1) == 0x1);
		ns = skb->data[i] >> 1;
		nr = (skb->data[i + 1] >> 1) & 0x7f;
	} else {
		PollFlag = (skb->data[i] & 0x10);
		ns = (skb->data[i] >> 1) & 0x7;
		nr = (skb->data[i] >> 5) & 0x7;
	}
	if (FUNC17(FLG_OWN_BUSY, &l2->flag)) {
		FUNC0(skb);
		if (PollFlag)
			FUNC2(l2);
	} else {
		if (l2->vr == ns) {
			l2->vr++;
			if (FUNC17(FLG_MOD128, &l2->flag))
				l2->vr %= 128;
			else
				l2->vr %= 8;
			FUNC15(FLG_REJEXC, &l2->flag);
			if (PollFlag)
				FUNC2(l2);
			else
				FUNC16(FLG_ACK_PEND, &l2->flag);
			FUNC12(skb, FUNC4(l2, 0));
			FUNC5(l2, DL_DATA_IND, skb);
		} else {
			/* n(s)!=v(r) */
			FUNC0(skb);
			if (FUNC16(FLG_REJEXC, &l2->flag)) {
				if (PollFlag)
					FUNC2(l2);
			} else {
				FUNC1(l2, REJ, RSP, PollFlag);
				FUNC15(FLG_ACK_PEND, &l2->flag);
			}
		}
	}
	if (FUNC6(l2, nr)) {
		if (!FUNC17(FLG_PEER_BUSY, &l2->flag) &&
		    (fi->state == ST_L2_7)) {
			if (nr == l2->vs) {
				FUNC14(l2, 13);
				FUNC8(&l2->t203, l2->T203,
						      EV_L2_T203, NULL, 7);
			} else if (nr != l2->va)
				FUNC10(l2, 14);
		}
		FUNC11(l2, nr);
	} else {
		FUNC9(fi);
		return;
	}
	if (FUNC13(&l2->i_queue) && (fi->state == ST_L2_7))
		FUNC7(fi, EV_L2_ACK_PULL, NULL);
	if (FUNC15(FLG_ACK_PEND, &l2->flag))
		FUNC1(l2, RR, RSP, 0);
}
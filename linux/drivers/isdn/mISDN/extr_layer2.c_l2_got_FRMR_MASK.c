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
struct layer2 {int /*<<< orphan*/  flag; } ;
struct FsmInst {scalar_t__ state; struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 scalar_t__ FUNC0 (int*) ; 
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 scalar_t__ ST_L2_7 ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*) ; 
 scalar_t__ FUNC3 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC4 (struct layer2*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;
	struct sk_buff *skb = arg;

	FUNC5(skb, FUNC3(l2) + 1);

	if (!(skb->data[0] & 1) || ((skb->data[0] & 3) == 1) || /* I or S */
	    (FUNC0(skb->data) && (fi->state == ST_L2_7))) {
		FUNC4(l2, MDL_ERROR_IND, (void *) 'K');
		FUNC2(fi);
		FUNC6(FLG_L3_INIT, &l2->flag);
	}
	FUNC1(skb);
}
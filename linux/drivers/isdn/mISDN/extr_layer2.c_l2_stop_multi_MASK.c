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
struct layer2 {scalar_t__ tm; int /*<<< orphan*/  i_queue; int /*<<< orphan*/  t203; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_RELEASE_IND ; 
 int /*<<< orphan*/  MDL_STATUS_DOWN_IND ; 
 int /*<<< orphan*/  RSP ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int UA ; 
 int /*<<< orphan*/  FUNC0 (struct layer2*) ; 
 int FUNC1 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct layer2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*,struct sk_buff*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct layer2*,int) ; 

__attribute__((used)) static void
FUNC9(struct FsmInst *fi, int event, void *arg)
{
	struct layer2	*l2 = fi->userdata;
	struct sk_buff	*skb = arg;

	FUNC4(fi, ST_L2_4);
	FUNC5(&l2->t203, 3);
	FUNC8(l2, 4);

	FUNC6(l2, skb, UA | FUNC1(l2, skb), RSP);
	FUNC7(&l2->i_queue);
	FUNC0(l2);
	FUNC3(l2, DL_RELEASE_IND);
	if (l2->tm)
		FUNC2(l2, MDL_STATUS_DOWN_IND, 0);
}
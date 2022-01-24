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
struct layer2 {scalar_t__ tm; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  DL_RELEASE_CNF ; 
 int /*<<< orphan*/  MDL_STATUS_DOWN_IND ; 
 int /*<<< orphan*/  ST_L2_4 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct layer2*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct layer2*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct layer2*,int) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;
	struct sk_buff *skb = arg;

	if (!FUNC1(l2, skb)) {
		FUNC2(fi, event, arg);
		return;
	}
	FUNC0(skb);
	FUNC6(l2, 6);
	FUNC4(l2, DL_RELEASE_CNF);
	FUNC5(fi, ST_L2_4);
	if (l2->tm)
		FUNC3(l2, MDL_STATUS_DOWN_IND, 0);
}
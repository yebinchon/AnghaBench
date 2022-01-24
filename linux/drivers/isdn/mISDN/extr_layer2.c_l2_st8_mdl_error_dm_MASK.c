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
struct layer2 {int /*<<< orphan*/  flag; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 int /*<<< orphan*/  FUNC0 (struct FsmInst*) ; 
 scalar_t__ FUNC1 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct layer2*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct sk_buff *skb = arg;
	struct layer2 *l2 = fi->userdata;

	if (FUNC1(l2, skb))
		FUNC2(l2, MDL_ERROR_IND, (void *) 'B');
	else
		FUNC2(l2, MDL_ERROR_IND, (void *) 'E');
	FUNC0(fi);
	FUNC3(FLG_L3_INIT, &l2->flag);
}
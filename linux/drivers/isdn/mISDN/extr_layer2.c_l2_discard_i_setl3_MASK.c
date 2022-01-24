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
struct layer2 {int /*<<< orphan*/  flag; int /*<<< orphan*/  i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_L3_INIT ; 
 int /*<<< orphan*/  FLG_PEND_REL ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct FsmInst *fi, int event, void *arg)
{
	struct sk_buff *skb = arg;
	struct layer2 *l2 = fi->userdata;

	FUNC1(&l2->i_queue);
	FUNC3(FLG_L3_INIT, &l2->flag);
	FUNC2(FLG_PEND_REL, &l2->flag);
	FUNC0(skb);
}
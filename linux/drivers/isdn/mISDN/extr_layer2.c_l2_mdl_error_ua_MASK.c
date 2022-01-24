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
struct layer2 {int dummy; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  MDL_ERROR_IND ; 
 scalar_t__ FUNC0 (struct layer2*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC2(struct FsmInst *fi, int event, void *arg)
{
	struct sk_buff *skb = arg;
	struct layer2 *l2 = fi->userdata;

	if (FUNC0(l2, skb))
		FUNC1(l2, MDL_ERROR_IND, (void *) 'C');
	else
		FUNC1(l2, MDL_ERROR_IND, (void *) 'D');

}
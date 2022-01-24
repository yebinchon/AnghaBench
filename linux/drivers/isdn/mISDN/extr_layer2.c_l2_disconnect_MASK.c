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
struct layer2 {int /*<<< orphan*/  t203; scalar_t__ rc; int /*<<< orphan*/  i_queue; } ;
struct FsmInst {struct layer2* userdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD ; 
 int DISC ; 
 int /*<<< orphan*/  ST_L2_6 ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct layer2*) ; 
 int /*<<< orphan*/  FUNC2 (struct FsmInst*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct layer2*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct layer2*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct FsmInst *fi, int event, void *arg)
{
	struct layer2 *l2 = fi->userdata;
	struct sk_buff *skb = arg;

	FUNC6(&l2->i_queue);
	FUNC1(l2);
	FUNC2(fi, ST_L2_6);
	l2->rc = 0;
	FUNC5(l2, NULL, DISC | 0x10, CMD);
	FUNC3(&l2->t203, 1);
	FUNC4(l2, 2);
	FUNC0(skb);
}
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
struct cpl_set_tcb_rpl {scalar_t__ status; } ;
struct c4iw_dev {int dummy; } ;

/* Variables and functions */
 scalar_t__ CPL_ERR_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct cpl_set_tcb_rpl*) ; 
 struct cpl_set_tcb_rpl* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct cpl_set_tcb_rpl *rpl = FUNC1(skb);

	if (rpl->status != CPL_ERR_NONE) {
		FUNC3("Unexpected SET_TCB_RPL status %u for tid %u\n",
		       rpl->status, FUNC0(rpl));
	}
	FUNC2(skb);
	return 0;
}
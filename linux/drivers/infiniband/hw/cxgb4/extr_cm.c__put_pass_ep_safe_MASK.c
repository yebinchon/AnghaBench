#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {scalar_t__ cb; } ;
struct c4iw_ep {TYPE_1__* parent_ep; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  com; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct c4iw_ep*) ; 

__attribute__((used)) static int FUNC2(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct c4iw_ep *ep;

	ep = *((struct c4iw_ep **)(skb->cb + 2 * sizeof(void *)));
	FUNC0(&ep->parent_ep->com);
	FUNC1(ep);
	return 0;
}
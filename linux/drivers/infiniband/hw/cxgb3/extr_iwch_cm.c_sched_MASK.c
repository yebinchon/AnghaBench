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
struct t3cdev {int dummy; } ;
struct sk_buff {int cb; } ;
struct iwch_ep_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwch_ep_common*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rxq ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  skb_work ; 
 int /*<<< orphan*/  workq ; 

__attribute__((used)) static int FUNC3(struct t3cdev *tdev, struct sk_buff *skb, void *ctx)
{
	struct iwch_ep_common *epc = ctx;

	FUNC0(epc);

	/*
	 * Save ctx and tdev in the skb->cb area.
	 */
	*((void **) skb->cb) = ctx;
	*((struct t3cdev **) (skb->cb + sizeof(void *))) = tdev;

	/*
	 * Queue the skb and schedule the worker thread.
	 */
	FUNC2(&rxq, skb);
	FUNC1(workq, &skb_work);
	return 0;
}
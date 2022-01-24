#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct chtls_dev {TYPE_1__ deferq; int /*<<< orphan*/  deferq_task; } ;
typedef  int /*<<< orphan*/  defer_handler_t ;
struct TYPE_5__ {int /*<<< orphan*/  handler; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct sk_buff *skb, struct chtls_dev *cdev,
			   defer_handler_t handler)
{
	FUNC0(skb)->handler = handler;
	FUNC4(&cdev->deferq.lock);
	FUNC1(&cdev->deferq, skb);
	if (FUNC3(&cdev->deferq) == 1)
		FUNC2(&cdev->deferq_task);
	FUNC5(&cdev->deferq.lock);
}
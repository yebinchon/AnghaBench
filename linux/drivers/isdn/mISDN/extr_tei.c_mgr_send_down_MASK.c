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
struct manager {int /*<<< orphan*/  ch; int /*<<< orphan*/  options; int /*<<< orphan*/  sendq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MGR_PH_ACTIVE ; 
 int /*<<< orphan*/  MISDN_ID_ANY ; 
 int /*<<< orphan*/  PH_ACTIVATE_REQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct manager*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct manager *mgr, struct sk_buff *skb)
{
	FUNC2(&mgr->sendq, skb);
	if (!FUNC3(MGR_PH_ACTIVE, &mgr->options)) {
		FUNC0(&mgr->ch, PH_ACTIVATE_REQ, MISDN_ID_ANY, 0,
			    NULL, GFP_KERNEL);
	} else {
		FUNC1(mgr);
	}
}
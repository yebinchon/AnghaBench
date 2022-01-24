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
struct c4iw_ep {int /*<<< orphan*/  com; int /*<<< orphan*/  hwtid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEAD ; 
 int /*<<< orphan*/  FAKE_CPL_PASS_PUT_EP_SAFE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct c4iw_ep*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *handle, struct sk_buff *skb)
{
	struct c4iw_ep *ep = handle;

	FUNC1("ARP failure during accept - tid %u - dropping connection\n",
	       ep->hwtid);

	FUNC0(&ep->com, DEAD);
	FUNC2(ep, skb, FAKE_CPL_PASS_PUT_EP_SAFE);
}
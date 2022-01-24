#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct cpl_abort_req {int /*<<< orphan*/  cmd; } ;
struct c4iw_rdev {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct c4iw_ep {TYPE_2__ com; } ;
struct TYPE_3__ {struct c4iw_rdev rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPL_ABORT_NO_RST ; 
 int /*<<< orphan*/  DEAD ; 
 int /*<<< orphan*/  FAKE_CPL_PUT_EP_SAFE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct c4iw_rdev*,struct sk_buff*) ; 
 struct cpl_abort_req* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct c4iw_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct c4iw_ep*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC7(void *handle, struct sk_buff *skb)
{
	int ret;
	struct c4iw_ep *ep = handle;
	struct c4iw_rdev *rdev = &ep->com.dev->rdev;
	struct cpl_abort_req *req = FUNC2(skb);

	FUNC4("rdev %p\n", rdev);
	req->cmd = CPL_ABORT_NO_RST;
	FUNC6(skb);
	ret = FUNC1(rdev, skb);
	if (ret) {
		FUNC0(&ep->com, DEAD);
		FUNC5(ep, skb, FAKE_CPL_PUT_EP_SAFE);
	} else
		FUNC3(skb);
}
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
struct sk_buff {int dummy; } ;
struct cpl_abort_req_rss {struct c4iw_ep* status; } ;
struct TYPE_2__ {int /*<<< orphan*/  wr_waitp; int /*<<< orphan*/  state; } ;
struct c4iw_ep {TYPE_1__ com; struct c4iw_ep* hwtid; } ;
struct c4iw_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNRESET ; 
 unsigned int FUNC0 (struct cpl_abort_req_rss*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cpl_abort_req_rss* FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct c4iw_ep*) ; 
 struct c4iw_ep* FUNC4 (struct c4iw_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC7 (char*,struct c4iw_ep*,struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct c4iw_dev*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC10(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct cpl_abort_req_rss *req = FUNC2(skb);
	struct c4iw_ep *ep;
	unsigned int tid = FUNC0(req);

	ep = FUNC4(dev, tid);
	/* This EP will be dereferenced in peer_abort() */
	if (!ep) {
		FUNC8("Abort on non-existent endpoint, tid %d\n", tid);
		FUNC5(skb);
		return 0;
	}
	if (FUNC3(req->status)) {
		FUNC7("Negative advice on abort- tid %u status %d (%s)\n",
			 ep->hwtid, req->status,
			 FUNC6(req->status));
		goto out;
	}
	FUNC7("ep %p tid %u state %u\n", ep, ep->hwtid, ep->com.state);

	FUNC1(ep->com.wr_waitp, -ECONNRESET);
out:
	FUNC9(dev, skb);
	return 0;
}
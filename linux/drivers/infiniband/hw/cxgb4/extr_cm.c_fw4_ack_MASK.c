#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct cpl_fw4_ack {scalar_t__ credits; } ;
struct TYPE_5__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {scalar_t__ initiator; } ;
struct c4iw_ep {TYPE_2__ com; int /*<<< orphan*/ * mpa_skb; TYPE_1__ mpa_attr; int /*<<< orphan*/  hwtid; int /*<<< orphan*/  dst; } ;
struct c4iw_dev {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cpl_fw4_ack*) ; 
 int /*<<< orphan*/  STOP_MPA_TIMER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 struct cpl_fw4_ack* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct c4iw_ep* FUNC4 (struct c4iw_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct c4iw_ep*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct c4iw_ep*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct c4iw_ep *ep;
	struct cpl_fw4_ack *hdr = FUNC2(skb);
	u8 credits = hdr->credits;
	unsigned int tid = FUNC0(hdr);


	ep = FUNC4(dev, tid);
	if (!ep)
		return 0;
	FUNC8("ep %p tid %u credits %u\n",
		 ep, ep->hwtid, credits);
	if (credits == 0) {
		FUNC8("0 credit ack ep %p tid %u state %u\n",
			 ep, ep->hwtid, FUNC9(&ep->com));
		goto out;
	}

	FUNC3(ep->dst);
	if (ep->mpa_skb) {
		FUNC8("last streaming msg ack ep %p tid %u state %u initiator %u freeing skb\n",
			 ep, ep->hwtid, FUNC9(&ep->com),
			 ep->mpa_attr.initiator ? 1 : 0);
		FUNC6(&ep->com.mutex);
		FUNC5(ep->mpa_skb);
		ep->mpa_skb = NULL;
		if (FUNC11(STOP_MPA_TIMER, &ep->com.flags))
			FUNC10(ep);
		FUNC7(&ep->com.mutex);
	}
out:
	FUNC1(&ep->com);
	return 0;
}
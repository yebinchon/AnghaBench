#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct tid_info {int dummy; } ;
struct sk_buff {int dummy; } ;
struct cpl_act_establish {int /*<<< orphan*/  rcv_isn; int /*<<< orphan*/  snd_isn; int /*<<< orphan*/  tos_atid; int /*<<< orphan*/  tcp_opt; } ;
struct TYPE_8__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_10__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  history; TYPE_4__* dev; TYPE_3__ local_addr; } ;
struct c4iw_ep {unsigned int hwtid; TYPE_5__ com; scalar_t__ retry_with_mpa_v1; int /*<<< orphan*/  snd_wscale; void* rcv_seq; void* snd_seq; int /*<<< orphan*/  dst; } ;
struct TYPE_6__ {struct tid_info* tids; } ;
struct TYPE_7__ {TYPE_1__ lldi; } ;
struct c4iw_dev {TYPE_2__ rdev; } ;
struct TYPE_9__ {int /*<<< orphan*/  atids; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACT_ESTAB ; 
 int /*<<< orphan*/  ENOMEM ; 
 unsigned int FUNC0 (struct cpl_act_establish*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct c4iw_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 struct cpl_act_establish* FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct tid_info*,struct c4iw_ep*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct c4iw_ep*) ; 
 struct c4iw_ep* FUNC11 (struct tid_info*,unsigned int) ; 
 int mpa_rev ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 unsigned short FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,struct c4iw_ep*,unsigned int,void*,void*) ; 
 int FUNC17 (struct c4iw_ep*) ; 
 int FUNC18 (struct c4iw_ep*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct c4iw_ep*,unsigned short) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC22(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct c4iw_ep *ep;
	struct cpl_act_establish *req = FUNC6(skb);
	unsigned short tcp_opt = FUNC15(req->tcp_opt);
	unsigned int tid = FUNC0(req);
	unsigned int atid = FUNC2(FUNC14(req->tos_atid));
	struct tid_info *t = dev->rdev.lldi.tids;
	int ret;

	ep = FUNC11(t, atid);

	FUNC16("ep %p tid %u snd_isn %u rcv_isn %u\n", ep, tid,
		 FUNC3(req->snd_isn), FUNC3(req->rcv_isn));

	FUNC12(&ep->com.mutex);
	FUNC9(ep->dst);

	/* setup the hwtid for this connection */
	ep->hwtid = tid;
	FUNC8(t, ep, tid, ep->com.local_addr.ss_family);
	FUNC10(ep);

	ep->snd_seq = FUNC3(req->snd_isn);
	ep->rcv_seq = FUNC3(req->rcv_isn);
	ep->snd_wscale = FUNC1(tcp_opt);

	FUNC20(ep, tcp_opt);

	/* dealloc the atid */
	FUNC21(&ep->com.dev->atids, atid);
	FUNC7(t, atid);
	FUNC19(ACT_ESTAB, &ep->com.history);

	/* start MPA negotiation */
	ret = FUNC17(ep);
	if (ret)
		goto err;
	if (ep->retry_with_mpa_v1)
		ret = FUNC18(ep, skb, 1);
	else
		ret = FUNC18(ep, skb, mpa_rev);
	if (ret)
		goto err;
	FUNC13(&ep->com.mutex);
	return 0;
err:
	FUNC13(&ep->com.mutex);
	FUNC5(ep, -ENOMEM);
	FUNC4(ep, 0, GFP_KERNEL);
	return 0;
}
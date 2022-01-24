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
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {int dummy; } ;
struct cpl_pass_establish {int /*<<< orphan*/  rcv_isn; int /*<<< orphan*/  snd_isn; int /*<<< orphan*/  tcp_opt; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; int /*<<< orphan*/  history; int /*<<< orphan*/  state; } ;
struct c4iw_ep {TYPE_1__ com; int /*<<< orphan*/  dst; int /*<<< orphan*/  snd_wscale; void* rcv_seq; void* snd_seq; int /*<<< orphan*/  hwtid; } ;
struct c4iw_dev {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct cpl_pass_establish*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MPA_REQ_WAIT ; 
 int /*<<< orphan*/  PASS_ESTAB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct c4iw_ep*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct cpl_pass_establish* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct c4iw_ep* FUNC7 (struct c4iw_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,struct c4iw_ep*,unsigned int,...) ; 
 int FUNC12 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct c4iw_ep*) ; 

__attribute__((used)) static int FUNC16(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct c4iw_ep *ep;
	struct cpl_pass_establish *req = FUNC5(skb);
	unsigned int tid = FUNC0(req);
	int ret;
	u16 tcp_opt = FUNC10(req->tcp_opt);

	ep = FUNC7(dev, tid);
	FUNC11("ep %p tid %u\n", ep, ep->hwtid);
	ep->snd_seq = FUNC2(req->snd_isn);
	ep->rcv_seq = FUNC2(req->rcv_isn);
	ep->snd_wscale = FUNC1(tcp_opt);

	FUNC11("ep %p hwtid %u tcp_opt 0x%02x\n", ep, tid, tcp_opt);

	FUNC14(ep, tcp_opt);

	FUNC6(ep->dst);
	FUNC8(&ep->com.mutex);
	ep->com.state = MPA_REQ_WAIT;
	FUNC15(ep);
	FUNC13(PASS_ESTAB, &ep->com.history);
	ret = FUNC12(ep);
	FUNC9(&ep->com.mutex);
	if (ret)
		FUNC3(ep, 1, GFP_KERNEL);
	FUNC4(&ep->com);

	return 0;
}
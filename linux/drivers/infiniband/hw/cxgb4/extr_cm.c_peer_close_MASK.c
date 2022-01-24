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
struct sk_buff {int dummy; } ;
struct cpl_peer_close {int dummy; } ;
struct c4iw_qp_attributes {int /*<<< orphan*/  next_state; } ;
struct TYPE_4__ {int state; int /*<<< orphan*/  mutex; TYPE_2__* qp; int /*<<< orphan*/  cm_id; int /*<<< orphan*/  wr_waitp; int /*<<< orphan*/  history; } ;
struct c4iw_ep {TYPE_1__ com; int /*<<< orphan*/  hwtid; int /*<<< orphan*/  dst; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  rhp; } ;

/* Variables and functions */
#define  ABORTING 136 
 int /*<<< orphan*/  C4IW_QP_ATTR_NEXT_STATE ; 
 int /*<<< orphan*/  C4IW_QP_STATE_CLOSING ; 
 int /*<<< orphan*/  C4IW_QP_STATE_IDLE ; 
#define  CLOSING 135 
#define  DEAD 134 
 int ECONNRESET ; 
#define  FPDU_MODE 133 
 unsigned int FUNC0 (struct cpl_peer_close*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  MORIBUND 132 
#define  MPA_REP_SENT 131 
#define  MPA_REQ_RCVD 130 
#define  MPA_REQ_SENT 129 
#define  MPA_REQ_WAIT 128 
 int /*<<< orphan*/  PEER_CLOSE ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct c4iw_ep*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,struct c4iw_qp_attributes*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct c4iw_ep*,int) ; 
 struct cpl_peer_close* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 struct c4iw_ep* FUNC11 (struct c4iw_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC15 (char*,struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC19 (struct c4iw_ep*) ; 

__attribute__((used)) static int FUNC20(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct cpl_peer_close *hdr = FUNC9(skb);
	struct c4iw_ep *ep;
	struct c4iw_qp_attributes attrs;
	int disconnect = 1;
	int release = 0;
	unsigned int tid = FUNC0(hdr);
	int ret;

	ep = FUNC11(dev, tid);
	if (!ep)
		return 0;

	FUNC15("ep %p tid %u\n", ep, ep->hwtid);
	FUNC10(ep->dst);

	FUNC17(PEER_CLOSE, &ep->com.history);
	FUNC12(&ep->com.mutex);
	switch (ep->com.state) {
	case MPA_REQ_WAIT:
		FUNC2(&ep->com, CLOSING);
		break;
	case MPA_REQ_SENT:
		FUNC2(&ep->com, CLOSING);
		FUNC8(ep, -ECONNRESET);
		break;
	case MPA_REQ_RCVD:

		/*
		 * We're gonna mark this puppy DEAD, but keep
		 * the reference on it until the ULP accepts or
		 * rejects the CR. Also wake up anyone waiting
		 * in rdma connection migration (see c4iw_accept_cr()).
		 */
		FUNC2(&ep->com, CLOSING);
		FUNC15("waking up ep %p tid %u\n", ep, ep->hwtid);
		FUNC6(ep->com.wr_waitp, -ECONNRESET);
		break;
	case MPA_REP_SENT:
		FUNC2(&ep->com, CLOSING);
		FUNC15("waking up ep %p tid %u\n", ep, ep->hwtid);
		FUNC6(ep->com.wr_waitp, -ECONNRESET);
		break;
	case FPDU_MODE:
		FUNC18(ep);
		FUNC2(&ep->com, CLOSING);
		attrs.next_state = C4IW_QP_STATE_CLOSING;
		ret = FUNC4(ep->com.qp->rhp, ep->com.qp,
				       C4IW_QP_ATTR_NEXT_STATE, &attrs, 1);
		if (ret != -ECONNRESET) {
			FUNC14(ep);
			disconnect = 1;
		}
		break;
	case ABORTING:
		disconnect = 0;
		break;
	case CLOSING:
		FUNC2(&ep->com, MORIBUND);
		disconnect = 0;
		break;
	case MORIBUND:
		(void)FUNC19(ep);
		if (ep->com.cm_id && ep->com.qp) {
			attrs.next_state = C4IW_QP_STATE_IDLE;
			FUNC4(ep->com.qp->rhp, ep->com.qp,
				       C4IW_QP_ATTR_NEXT_STATE, &attrs, 1);
		}
		FUNC7(ep, 0);
		FUNC2(&ep->com, DEAD);
		release = 1;
		disconnect = 0;
		break;
	case DEAD:
		disconnect = 0;
		break;
	default:
		FUNC1(1, "Bad endpoint state %u\n", ep->com.state);
	}
	FUNC13(&ep->com.mutex);
	if (disconnect)
		FUNC3(ep, 0, GFP_KERNEL);
	if (release)
		FUNC16(ep);
	FUNC5(&ep->com);
	return 0;
}
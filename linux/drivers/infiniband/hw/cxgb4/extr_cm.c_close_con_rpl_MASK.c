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
struct cpl_close_con_rpl {int dummy; } ;
struct c4iw_qp_attributes {int /*<<< orphan*/  next_state; } ;
struct TYPE_4__ {int state; int /*<<< orphan*/  mutex; TYPE_2__* qp; int /*<<< orphan*/  cm_id; int /*<<< orphan*/  history; } ;
struct c4iw_ep {TYPE_1__ com; int /*<<< orphan*/  hwtid; } ;
struct c4iw_dev {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  rhp; } ;

/* Variables and functions */
#define  ABORTING 131 
 int /*<<< orphan*/  C4IW_QP_ATTR_NEXT_STATE ; 
 int /*<<< orphan*/  C4IW_QP_STATE_IDLE ; 
 int /*<<< orphan*/  CLOSE_CON_RPL ; 
#define  CLOSING 130 
#define  DEAD 129 
 unsigned int FUNC0 (struct cpl_close_con_rpl*) ; 
#define  MORIBUND 128 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,struct c4iw_qp_attributes*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 struct cpl_close_con_rpl* FUNC6 (struct sk_buff*) ; 
 struct c4iw_ep* FUNC7 (struct c4iw_dev*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct c4iw_ep*) ; 

__attribute__((used)) static int FUNC14(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct c4iw_ep *ep;
	struct c4iw_qp_attributes attrs;
	struct cpl_close_con_rpl *rpl = FUNC6(skb);
	int release = 0;
	unsigned int tid = FUNC0(rpl);

	ep = FUNC7(dev, tid);
	if (!ep)
		return 0;

	FUNC10("ep %p tid %u\n", ep, ep->hwtid);

	/* The cm_id may be null if we failed to connect */
	FUNC8(&ep->com.mutex);
	FUNC12(CLOSE_CON_RPL, &ep->com.history);
	switch (ep->com.state) {
	case CLOSING:
		FUNC2(&ep->com, MORIBUND);
		break;
	case MORIBUND:
		(void)FUNC13(ep);
		if ((ep->com.cm_id) && (ep->com.qp)) {
			attrs.next_state = C4IW_QP_STATE_IDLE;
			FUNC3(ep->com.qp->rhp,
					     ep->com.qp,
					     C4IW_QP_ATTR_NEXT_STATE,
					     &attrs, 1);
		}
		FUNC5(ep, 0);
		FUNC2(&ep->com, DEAD);
		release = 1;
		break;
	case ABORTING:
	case DEAD:
		break;
	default:
		FUNC1(1, "Bad endpoint state %u\n", ep->com.state);
		break;
	}
	FUNC9(&ep->com.mutex);
	if (release)
		FUNC11(ep);
	FUNC4(&ep->com);
	return 0;
}
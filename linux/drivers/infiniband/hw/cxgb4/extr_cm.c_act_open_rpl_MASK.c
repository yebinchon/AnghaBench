#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_9__ ;
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_7__ ;
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct tid_info {int dummy; } ;
struct TYPE_24__ {int /*<<< orphan*/ * s6_addr; } ;
struct sockaddr_in6 {TYPE_8__ sin6_addr; int /*<<< orphan*/  sin6_port; } ;
struct TYPE_21__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_5__ sin_addr; } ;
struct sk_buff {int dummy; } ;
struct cpl_act_open_rpl {int /*<<< orphan*/  atid_status; } ;
struct TYPE_23__ {int /*<<< orphan*/  ss_family; } ;
struct TYPE_22__ {scalar_t__ ss_family; } ;
struct TYPE_16__ {TYPE_11__* dev; TYPE_7__ local_addr; TYPE_6__ remote_addr; int /*<<< orphan*/  history; } ;
struct TYPE_17__ {int /*<<< orphan*/  connect_neg_adv; } ;
struct c4iw_ep {TYPE_12__ com; int /*<<< orphan*/  l2t; int /*<<< orphan*/  dst; int /*<<< orphan*/  retry_count; TYPE_1__ stats; } ;
struct TYPE_19__ {int /*<<< orphan*/  enable_fw_ofld_conn; struct tid_info* tids; } ;
struct TYPE_18__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  tcam_full; int /*<<< orphan*/  neg_adv; } ;
struct TYPE_20__ {TYPE_3__ lldi; TYPE_2__ stats; } ;
struct c4iw_dev {TYPE_4__ rdev; } ;
struct TYPE_25__ {int /*<<< orphan*/  tids; int /*<<< orphan*/ * ports; } ;
struct TYPE_14__ {TYPE_9__ lldi; } ;
struct TYPE_15__ {int /*<<< orphan*/  atids; TYPE_10__ rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACT_OPEN_RETRY_COUNT ; 
 int /*<<< orphan*/  ACT_OPEN_RPL ; 
 int /*<<< orphan*/  ACT_RETRY_INUSE ; 
 int /*<<< orphan*/  AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  CPL_ERR_CONN_EXIST 131 
#define  CPL_ERR_CONN_RESET 130 
#define  CPL_ERR_CONN_TIMEDOUT 129 
#define  CPL_ERR_TCAM_FULL 128 
 int /*<<< orphan*/  DEAD ; 
 int /*<<< orphan*/  FUNC2 (struct cpl_act_open_rpl*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC6 (struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC7 (struct c4iw_ep*,int /*<<< orphan*/ ) ; 
 struct cpl_act_open_rpl* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 struct c4iw_ep* FUNC15 (struct tid_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,...) ; 
 int /*<<< orphan*/  FUNC22 (char*,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct c4iw_ep*,unsigned int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_12__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC28(struct c4iw_dev *dev, struct sk_buff *skb)
{
	struct c4iw_ep *ep;
	struct cpl_act_open_rpl *rpl = FUNC8(skb);
	unsigned int atid = FUNC3(FUNC0(
				      FUNC19(rpl->atid_status)));
	struct tid_info *t = dev->rdev.lldi.tids;
	int status = FUNC1(FUNC19(rpl->atid_status));
	struct sockaddr_in *la;
	struct sockaddr_in *ra;
	struct sockaddr_in6 *la6;
	struct sockaddr_in6 *ra6;
	int ret = 0;

	ep = FUNC15(t, atid);
	la = (struct sockaddr_in *)&ep->com.local_addr;
	ra = (struct sockaddr_in *)&ep->com.remote_addr;
	la6 = (struct sockaddr_in6 *)&ep->com.local_addr;
	ra6 = (struct sockaddr_in6 *)&ep->com.remote_addr;

	FUNC21("ep %p atid %u status %u errno %d\n", ep, atid,
		 status, FUNC26(status));

	if (FUNC13(status)) {
		FUNC21("Connection problems for atid %u status %u (%s)\n",
			 atid, status, FUNC18(status));
		ep->stats.connect_neg_adv++;
		FUNC16(&dev->rdev.stats.lock);
		dev->rdev.stats.neg_adv++;
		FUNC17(&dev->rdev.stats.lock);
		return 0;
	}

	FUNC24(ACT_OPEN_RPL, &ep->com.history);

	/*
	 * Log interesting failures.
	 */
	switch (status) {
	case CPL_ERR_CONN_RESET:
	case CPL_ERR_CONN_TIMEDOUT:
		break;
	case CPL_ERR_TCAM_FULL:
		FUNC16(&dev->rdev.stats.lock);
		dev->rdev.stats.tcam_full++;
		FUNC17(&dev->rdev.stats.lock);
		if (ep->com.local_addr.ss_family == AF_INET &&
		    dev->rdev.lldi.enable_fw_ofld_conn) {
			ret = FUNC23(ep, FUNC3(FUNC0(
						   FUNC19(rpl->atid_status))));
			if (ret)
				goto fail;
			return 0;
		}
		break;
	case CPL_ERR_CONN_EXIST:
		if (ep->retry_count++ < ACT_OPEN_RETRY_COUNT) {
			FUNC24(ACT_RETRY_INUSE, &ep->com.history);
			if (ep->com.remote_addr.ss_family == AF_INET6) {
				struct sockaddr_in6 *sin6 =
						(struct sockaddr_in6 *)
						&ep->com.local_addr;
				FUNC9(
						ep->com.dev->rdev.lldi.ports[0],
						(const u32 *)
						&sin6->sin6_addr.s6_addr, 1);
			}
			FUNC27(&ep->com.dev->atids, atid);
			FUNC10(t, atid);
			FUNC14(ep->dst);
			FUNC11(ep->l2t);
			FUNC6(ep);
			return 0;
		}
		break;
	default:
		if (ep->com.local_addr.ss_family == AF_INET) {
			FUNC22("Active open failure - atid %u status %u errno %d %pI4:%u->%pI4:%u\n",
				atid, status, FUNC26(status),
				&la->sin_addr.s_addr, FUNC20(la->sin_port),
				&ra->sin_addr.s_addr, FUNC20(ra->sin_port));
		} else {
			FUNC22("Active open failure - atid %u status %u errno %d %pI6:%u->%pI6:%u\n",
				atid, status, FUNC26(status),
				la6->sin6_addr.s6_addr, FUNC20(la6->sin6_port),
				ra6->sin6_addr.s6_addr, FUNC20(ra6->sin6_port));
		}
		break;
	}

fail:
	FUNC7(ep, FUNC26(status));
	FUNC25(&ep->com, DEAD);

	if (ep->com.remote_addr.ss_family == AF_INET6) {
		struct sockaddr_in6 *sin6 =
			(struct sockaddr_in6 *)&ep->com.local_addr;
		FUNC9(ep->com.dev->rdev.lldi.ports[0],
				   (const u32 *)&sin6->sin6_addr.s6_addr, 1);
	}
	if (status && FUNC4(status))
		FUNC12(ep->com.dev->rdev.lldi.tids, 0, FUNC2(rpl),
				 ep->com.local_addr.ss_family);

	FUNC27(&ep->com.dev->atids, atid);
	FUNC10(t, atid);
	FUNC14(ep->dst);
	FUNC11(ep->l2t);
	FUNC5(&ep->com);

	return 0;
}
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
typedef  int u64 ;
struct sockaddr_ib {void* sib_sid_mask; void* sib_sid; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {scalar_t__ ps; } ;
struct rdma_id_private {TYPE_1__ id; } ;
typedef  enum rdma_ucm_port_space { ____Placeholder_rdma_ucm_port_space } rdma_ucm_port_space ;

/* Variables and functions */
 int RDMA_IB_IP_PS_IB ; 
 int RDMA_IB_IP_PS_MASK ; 
 int RDMA_IB_IP_PS_TCP ; 
 int RDMA_IB_IP_PS_UDP ; 
 scalar_t__ RDMA_PS_IB ; 
 scalar_t__ RDMA_PS_TCP ; 
 scalar_t__ RDMA_PS_UDP ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr*) ; 
 scalar_t__ FUNC2 (struct rdma_id_private*) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum rdma_ucm_port_space
FUNC5(struct rdma_id_private *id_priv)
{
	enum rdma_ucm_port_space ps = 0;
	struct sockaddr_ib *sib;
	u64 sid_ps, mask, sid;

	sib = (struct sockaddr_ib *) FUNC2(id_priv);
	mask = FUNC0(sib->sib_sid_mask) & RDMA_IB_IP_PS_MASK;
	sid = FUNC0(sib->sib_sid) & mask;

	if ((id_priv->id.ps == RDMA_PS_IB) && (sid == (RDMA_IB_IP_PS_IB & mask))) {
		sid_ps = RDMA_IB_IP_PS_IB;
		ps = RDMA_PS_IB;
	} else if (((id_priv->id.ps == RDMA_PS_IB) || (id_priv->id.ps == RDMA_PS_TCP)) &&
		   (sid == (RDMA_IB_IP_PS_TCP & mask))) {
		sid_ps = RDMA_IB_IP_PS_TCP;
		ps = RDMA_PS_TCP;
	} else if (((id_priv->id.ps == RDMA_PS_IB) || (id_priv->id.ps == RDMA_PS_UDP)) &&
		   (sid == (RDMA_IB_IP_PS_UDP & mask))) {
		sid_ps = RDMA_IB_IP_PS_UDP;
		ps = RDMA_PS_UDP;
	}

	if (ps) {
		sib->sib_sid = FUNC3(sid_ps | FUNC4(FUNC1((struct sockaddr *) sib)));
		sib->sib_sid_mask = FUNC3(RDMA_IB_IP_PS_MASK |
						FUNC0(sib->sib_sid_mask));
	}
	return ps;
}
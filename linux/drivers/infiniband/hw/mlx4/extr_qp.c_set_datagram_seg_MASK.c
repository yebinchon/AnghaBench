#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct mlx4_wqe_datagram_seg {int /*<<< orphan*/  mac; int /*<<< orphan*/  vlan; void* qkey; void* dqpn; int /*<<< orphan*/  av; } ;
struct mlx4_av {int dummy; } ;
struct ib_ud_wr {int /*<<< orphan*/  ah; int /*<<< orphan*/  remote_qkey; int /*<<< orphan*/  remote_qpn; } ;
struct TYPE_4__ {TYPE_3__* mac; int /*<<< orphan*/  vlan; } ;
struct TYPE_6__ {TYPE_1__ eth; } ;
struct TYPE_5__ {TYPE_3__ av; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_3__*,int) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx4_wqe_datagram_seg *dseg,
			     const struct ib_ud_wr *wr)
{
	FUNC1(dseg->av, &FUNC2(wr->ah)->av, sizeof (struct mlx4_av));
	dseg->dqpn = FUNC0(wr->remote_qpn);
	dseg->qkey = FUNC0(wr->remote_qkey);
	dseg->vlan = FUNC2(wr->ah)->av.eth.vlan;
	FUNC1(dseg->mac, FUNC2(wr->ah)->av.eth.mac, 6);
}
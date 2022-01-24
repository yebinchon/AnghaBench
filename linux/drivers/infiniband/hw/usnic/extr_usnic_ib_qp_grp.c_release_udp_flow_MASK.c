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
struct TYPE_2__ {int /*<<< orphan*/  sock; } ;
struct usnic_ib_qp_grp_flow {TYPE_1__ udp; int /*<<< orphan*/  flow; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usnic_ib_qp_grp_flow*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct usnic_ib_qp_grp_flow *qp_flow)
{
	FUNC1(qp_flow->flow);
	FUNC2(qp_flow->udp.sock);
	FUNC0(qp_flow);
}
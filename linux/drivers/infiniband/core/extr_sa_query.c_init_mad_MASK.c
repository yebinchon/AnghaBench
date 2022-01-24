#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct ib_sa_query {int flags; TYPE_1__* mad_buf; } ;
struct TYPE_4__ {int /*<<< orphan*/  tid; int /*<<< orphan*/  mgmt_class; int /*<<< orphan*/  class_version; int /*<<< orphan*/  base_version; } ;
struct ib_sa_mad {TYPE_2__ mad_hdr; } ;
struct ib_mad_agent {scalar_t__ hi_tid; } ;
struct TYPE_3__ {struct ib_sa_mad* mad; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MGMT_BASE_VERSION ; 
 int /*<<< orphan*/  IB_MGMT_CLASS_SUBN_ADM ; 
 int /*<<< orphan*/  IB_SA_CLASS_VERSION ; 
 int IB_SA_QUERY_OPA ; 
 int /*<<< orphan*/  OPA_MGMT_BASE_VERSION ; 
 int /*<<< orphan*/  OPA_SA_CLASS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_sa_mad*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  tid ; 
 int /*<<< orphan*/  tid_lock ; 

__attribute__((used)) static void FUNC4(struct ib_sa_query *query, struct ib_mad_agent *agent)
{
	struct ib_sa_mad *mad = query->mad_buf->mad;
	unsigned long flags;

	FUNC1(mad, 0, sizeof *mad);

	if (query->flags & IB_SA_QUERY_OPA) {
		mad->mad_hdr.base_version  = OPA_MGMT_BASE_VERSION;
		mad->mad_hdr.class_version = OPA_SA_CLASS_VERSION;
	} else {
		mad->mad_hdr.base_version  = IB_MGMT_BASE_VERSION;
		mad->mad_hdr.class_version = IB_SA_CLASS_VERSION;
	}
	mad->mad_hdr.mgmt_class    = IB_MGMT_CLASS_SUBN_ADM;
	FUNC2(&tid_lock, flags);
	mad->mad_hdr.tid           =
		FUNC0(((u64) agent->hi_tid) << 32 | tid++);
	FUNC3(&tid_lock, flags);
}
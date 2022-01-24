#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ib_sa_mcmember_data {int /*<<< orphan*/  scope_join_state; } ;
struct mcast_group {int /*<<< orphan*/  timeout_work; TYPE_3__* demux; int /*<<< orphan*/  state; struct ib_sa_mcmember_data rec; int /*<<< orphan*/  last_req_tid; } ;
struct TYPE_6__ {int sm_key; int comp_mask; void* attr_offset; } ;
struct TYPE_5__ {int base_version; int class_version; int /*<<< orphan*/  attr_mod; void* attr_id; int /*<<< orphan*/  tid; void* class_specific; void* status; int /*<<< orphan*/  method; int /*<<< orphan*/  mgmt_class; } ;
struct ib_sa_mad {TYPE_2__ sa_hdr; TYPE_1__ mad_hdr; int /*<<< orphan*/  data; } ;
struct ib_mad {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  mcg_wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_MGMT_CLASS_SUBN_ADM ; 
 int IB_SA_ATTR_MC_MEMBER_REC ; 
 int IB_SA_MCMEMBER_REC_JOIN_STATE ; 
 int IB_SA_MCMEMBER_REC_MGID ; 
 int IB_SA_MCMEMBER_REC_PORT_GID ; 
 int /*<<< orphan*/  IB_SA_METHOD_DELETE ; 
 int /*<<< orphan*/  MAD_TIMEOUT_MS ; 
 int /*<<< orphan*/  MCAST_IDLE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_sa_mad*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_3__*,struct ib_mad*) ; 

__attribute__((used)) static int FUNC7(struct mcast_group *group, u8 join_state)
{
	struct ib_sa_mad mad;
	struct ib_sa_mcmember_data *sa_data = (struct ib_sa_mcmember_data *)&mad.data;
	int ret;

	FUNC2(&mad, 0, sizeof mad);
	mad.mad_hdr.base_version = 1;
	mad.mad_hdr.mgmt_class = IB_MGMT_CLASS_SUBN_ADM;
	mad.mad_hdr.class_version = 2;
	mad.mad_hdr.method = IB_SA_METHOD_DELETE;
	mad.mad_hdr.status = FUNC0(0);
	mad.mad_hdr.class_specific = FUNC0(0);
	mad.mad_hdr.tid = FUNC3(group->demux);
	group->last_req_tid = mad.mad_hdr.tid; /* keep it for later validation */
	mad.mad_hdr.attr_id = FUNC0(IB_SA_ATTR_MC_MEMBER_REC);
	mad.mad_hdr.attr_mod = FUNC1(0);
	mad.sa_hdr.sm_key = 0x0;
	mad.sa_hdr.attr_offset = FUNC0(7);
	mad.sa_hdr.comp_mask = IB_SA_MCMEMBER_REC_MGID |
		IB_SA_MCMEMBER_REC_PORT_GID | IB_SA_MCMEMBER_REC_JOIN_STATE;

	*sa_data = group->rec;
	sa_data->scope_join_state = join_state;

	ret = FUNC6(group->demux, (struct ib_mad *)&mad);
	if (ret)
		group->state = MCAST_IDLE;

	/* set timeout handler */
	if (!ret) {
		/* calls mlx4_ib_mcg_timeout_handler */
		FUNC5(group->demux->mcg_wq, &group->timeout_work,
				FUNC4(MAD_TIMEOUT_MS));
	}

	return ret;
}
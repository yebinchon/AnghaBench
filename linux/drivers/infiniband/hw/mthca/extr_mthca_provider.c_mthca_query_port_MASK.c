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
typedef  int /*<<< orphan*/  u8 ;
struct ib_smp {int* data; int /*<<< orphan*/  attr_mod; int /*<<< orphan*/  attr_id; } ;
struct ib_port_attr {int lmc; int sm_sl; int state; int phys_state; int max_msg_sz; int active_width; int active_speed; int max_mtu; int active_mtu; int subnet_timeout; int max_vl_num; int init_type_reply; void* qkey_viol_cntr; void* bad_pkey_cntr; int /*<<< orphan*/  pkey_tbl_len; int /*<<< orphan*/  gid_tbl_len; int /*<<< orphan*/  port_cap_flags; void* sm_lid; void* lid; } ;
struct ib_device {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_4__ {int /*<<< orphan*/  pkey_table_len; int /*<<< orphan*/  gid_table_len; } ;
struct TYPE_5__ {TYPE_1__ limits; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IB_SMP_ATTR_PORT_INFO ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_smp*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_smp*) ; 
 struct ib_smp* FUNC5 (int,int /*<<< orphan*/ ) ; 
 struct ib_smp* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_2__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ib_smp*,struct ib_smp*) ; 
 TYPE_2__* FUNC8 (struct ib_device*) ; 

__attribute__((used)) static int FUNC9(struct ib_device *ibdev,
			    u8 port, struct ib_port_attr *props)
{
	struct ib_smp *in_mad  = NULL;
	struct ib_smp *out_mad = NULL;
	int err = -ENOMEM;

	in_mad  = FUNC6(sizeof *in_mad, GFP_KERNEL);
	out_mad = FUNC5(sizeof *out_mad, GFP_KERNEL);
	if (!in_mad || !out_mad)
		goto out;

	/* props being zeroed by the caller, avoid zeroing it here */

	FUNC3(in_mad);
	in_mad->attr_id  = IB_SMP_ATTR_PORT_INFO;
	in_mad->attr_mod = FUNC2(port);

	err = FUNC7(FUNC8(ibdev), 1, 1,
			    port, NULL, NULL, in_mad, out_mad);
	if (err)
		goto out;

	props->lid               = FUNC0((__be16 *) (out_mad->data + 16));
	props->lmc               = out_mad->data[34] & 0x7;
	props->sm_lid            = FUNC0((__be16 *) (out_mad->data + 18));
	props->sm_sl             = out_mad->data[36] & 0xf;
	props->state             = out_mad->data[32] & 0xf;
	props->phys_state        = out_mad->data[33] >> 4;
	props->port_cap_flags    = FUNC1((__be32 *) (out_mad->data + 20));
	props->gid_tbl_len       = FUNC8(ibdev)->limits.gid_table_len;
	props->max_msg_sz        = 0x80000000;
	props->pkey_tbl_len      = FUNC8(ibdev)->limits.pkey_table_len;
	props->bad_pkey_cntr     = FUNC0((__be16 *) (out_mad->data + 46));
	props->qkey_viol_cntr    = FUNC0((__be16 *) (out_mad->data + 48));
	props->active_width      = out_mad->data[31] & 0xf;
	props->active_speed      = out_mad->data[35] >> 4;
	props->max_mtu           = out_mad->data[41] & 0xf;
	props->active_mtu        = out_mad->data[36] >> 4;
	props->subnet_timeout    = out_mad->data[51] & 0x1f;
	props->max_vl_num        = out_mad->data[37] >> 4;
	props->init_type_reply   = out_mad->data[41] >> 4;

 out:
	FUNC4(in_mad);
	FUNC4(out_mad);
	return err;
}
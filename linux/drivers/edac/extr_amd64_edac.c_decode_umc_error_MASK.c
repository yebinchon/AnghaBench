#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct mce {int status; int synd; int /*<<< orphan*/  addr; } ;
struct err_info {int syndrome; int csrow; int /*<<< orphan*/  err_code; int /*<<< orphan*/  channel; } ;
struct amd64_pvt {int /*<<< orphan*/  mc_node_id; } ;
typedef  int /*<<< orphan*/  err ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_CHANNEL ; 
 int /*<<< orphan*/  ERR_NORM_ADDR ; 
 int /*<<< orphan*/  ERR_SYND ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int MCI_STATUS_DEFERRED ; 
 int MCI_STATUS_SYNDV ; 
 int /*<<< orphan*/  FUNC1 (struct mem_ctl_info*,struct err_info*,int) ; 
 struct mem_ctl_info* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct err_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct mce*) ; 
 int /*<<< orphan*/  FUNC5 (struct err_info*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(int node_id, struct mce *m)
{
	u8 ecc_type = (m->status >> 45) & 0x3;
	struct mem_ctl_info *mci;
	struct amd64_pvt *pvt;
	struct err_info err;
	u64 sys_addr;

	mci = FUNC2(node_id);
	if (!mci)
		return;

	pvt = mci->pvt_info;

	FUNC5(&err, 0, sizeof(err));

	if (m->status & MCI_STATUS_DEFERRED)
		ecc_type = 3;

	err.channel = FUNC4(m);

	if (!(m->status & MCI_STATUS_SYNDV)) {
		err.err_code = ERR_SYND;
		goto log_error;
	}

	if (ecc_type == 2) {
		u8 length = (m->synd >> 18) & 0x3f;

		if (length)
			err.syndrome = (m->synd >> 32) & FUNC0(length - 1, 0);
		else
			err.err_code = ERR_CHANNEL;
	}

	err.csrow = m->synd & 0x7;

	if (FUNC6(m->addr, pvt->mc_node_id, err.channel, &sys_addr)) {
		err.err_code = ERR_NORM_ADDR;
		goto log_error;
	}

	FUNC3(sys_addr, &err);

log_error:
	FUNC1(mci, &err, ecc_type);
}
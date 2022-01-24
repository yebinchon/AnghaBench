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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct mem_ctl_info {struct amd64_pvt* pvt_info; } ;
struct mce {int status; } ;
struct err_info {int /*<<< orphan*/  syndrome; } ;
struct amd64_pvt {TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  err ;
struct TYPE_2__ {int /*<<< orphan*/  (* map_sysaddr_to_csrow ) (struct mem_ctl_info*,int /*<<< orphan*/ ,struct err_info*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ F10_NBSL_EXT_ERR_ECC ; 
 scalar_t__ NBSL_PP_OBS ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mem_ctl_info*,struct err_info*,scalar_t__) ; 
 struct mem_ctl_info* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct amd64_pvt*,struct mce*) ; 
 int /*<<< orphan*/  FUNC7 (struct err_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mem_ctl_info*,int /*<<< orphan*/ ,struct err_info*) ; 

__attribute__((used)) static inline void FUNC9(int node_id, struct mce *m)
{
	struct mem_ctl_info *mci;
	struct amd64_pvt *pvt;
	u8 ecc_type = (m->status >> 45) & 0x3;
	u8 xec = FUNC2(m->status, 0x1f);
	u16 ec = FUNC0(m->status);
	u64 sys_addr;
	struct err_info err;

	mci = FUNC4(node_id);
	if (!mci)
		return;

	pvt = mci->pvt_info;

	/* Bail out early if this was an 'observed' error */
	if (FUNC1(ec) == NBSL_PP_OBS)
		return;

	/* Do only ECC errors */
	if (xec && xec != F10_NBSL_EXT_ERR_ECC)
		return;

	FUNC7(&err, 0, sizeof(err));

	sys_addr = FUNC6(pvt, m);

	if (ecc_type == 2)
		err.syndrome = FUNC5(m->status);

	pvt->ops->map_sysaddr_to_csrow(mci, sys_addr, &err);

	FUNC3(mci, &err, ecc_type);
}
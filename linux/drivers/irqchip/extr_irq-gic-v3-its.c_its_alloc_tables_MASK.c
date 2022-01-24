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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct its_node {int flags; int /*<<< orphan*/  device_ids; struct its_baser* tables; } ;
struct its_baser {int val; int /*<<< orphan*/  psz; } ;

/* Variables and functions */
 int GITS_BASER_CACHEABILITY_MASK ; 
 int GITS_BASER_InnerShareable ; 
 int GITS_BASER_NR_REGS ; 
 int GITS_BASER_RaWaWb ; 
 int GITS_BASER_SHAREABILITY_MASK ; 
 int FUNC0 (int) ; 
#define  GITS_BASER_TYPE_DEVICE 130 
#define  GITS_BASER_TYPE_NONE 129 
#define  GITS_BASER_TYPE_VCPU 128 
 int GITS_BASER_nCnB ; 
 int ITS_FLAGS_WORKAROUND_CAVIUM_22375 ; 
 int /*<<< orphan*/  ITS_MAX_VPEID_BITS ; 
 int /*<<< orphan*/  SZ_64K ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct its_node*) ; 
 int FUNC3 (struct its_node*,struct its_baser*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct its_node*,struct its_baser*) ; 
 int FUNC5 (struct its_node*,struct its_baser*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct its_node *its)
{
	u64 shr = GITS_BASER_InnerShareable;
	u64 cache = GITS_BASER_RaWaWb;
	u32 psz = SZ_64K;
	int err, i;

	if (its->flags & ITS_FLAGS_WORKAROUND_CAVIUM_22375)
		/* erratum 24313: ignore memory access type */
		cache = GITS_BASER_nCnB;

	for (i = 0; i < GITS_BASER_NR_REGS; i++) {
		struct its_baser *baser = its->tables + i;
		u64 val = FUNC4(its, baser);
		u64 type = FUNC0(val);
		u32 order = FUNC1(psz);
		bool indirect = false;

		switch (type) {
		case GITS_BASER_TYPE_NONE:
			continue;

		case GITS_BASER_TYPE_DEVICE:
			indirect = FUNC3(its, baser,
							    psz, &order,
							    its->device_ids);
			break;

		case GITS_BASER_TYPE_VCPU:
			indirect = FUNC3(its, baser,
							    psz, &order,
							    ITS_MAX_VPEID_BITS);
			break;
		}

		err = FUNC5(its, baser, cache, shr, psz, order, indirect);
		if (err < 0) {
			FUNC2(its);
			return err;
		}

		/* Update settings which will be used for next BASERn */
		psz = baser->psz;
		cache = baser->val & GITS_BASER_CACHEABILITY_MASK;
		shr = baser->val & GITS_BASER_SHAREABILITY_MASK;
	}

	return 0;
}
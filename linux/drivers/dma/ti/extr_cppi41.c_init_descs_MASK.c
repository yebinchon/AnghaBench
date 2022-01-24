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
typedef  int u32 ;
struct device {int dummy; } ;
struct cppi41_desc {int dummy; } ;
struct cppi41_dd {int descs_phys; scalar_t__ qmgr_mem; int /*<<< orphan*/  cd; } ;

/* Variables and functions */
 int ALLOC_DECS_NUM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DESCS_AREAS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int QMGR_MEMCTRL_DESC_SH ; 
 int QMGR_MEMCTRL_IDX_SH ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,unsigned int,int*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, struct cppi41_dd *cdd)
{
	unsigned int desc_size;
	unsigned int mem_decs;
	int i;
	u32 reg;
	u32 idx;

	FUNC0(sizeof(struct cppi41_desc) &
			(sizeof(struct cppi41_desc) - 1));
	FUNC0(sizeof(struct cppi41_desc) < 32);
	FUNC0(ALLOC_DECS_NUM < 32);

	desc_size = sizeof(struct cppi41_desc);
	mem_decs = ALLOC_DECS_NUM * desc_size;

	idx = 0;
	for (i = 0; i < DESCS_AREAS; i++) {

		reg = idx << QMGR_MEMCTRL_IDX_SH;
		reg |= (FUNC5(desc_size) - 5) << QMGR_MEMCTRL_DESC_SH;
		reg |= FUNC5(ALLOC_DECS_NUM) - 5;

		FUNC0(DESCS_AREAS != 1);
		cdd->cd = FUNC4(dev, mem_decs,
				&cdd->descs_phys, GFP_KERNEL);
		if (!cdd->cd)
			return -ENOMEM;

		FUNC3(cdd->descs_phys, cdd->qmgr_mem + FUNC1(i));
		FUNC3(reg, cdd->qmgr_mem + FUNC2(i));

		idx += ALLOC_DECS_NUM;
	}
	return 0;
}
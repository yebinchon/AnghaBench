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
typedef  int sysmmu_iova_t ;
struct sysmmu_fault_info {unsigned int bit; int /*<<< orphan*/  type; scalar_t__ addr_reg; } ;
struct sysmmu_drvdata {int /*<<< orphan*/  lock; int /*<<< orphan*/  clk_master; scalar_t__ sfrbase; int /*<<< orphan*/  master; TYPE_1__* domain; int /*<<< orphan*/  version; int /*<<< orphan*/  active; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  domain; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sysmmu_fault_info*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOSYS ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned short REG_INT_CLEAR ; 
 unsigned short REG_INT_STATUS ; 
 unsigned short REG_V5_INT_CLEAR ; 
 unsigned short REG_V5_INT_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 unsigned int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (scalar_t__) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct sysmmu_drvdata*,struct sysmmu_fault_info const*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct sysmmu_fault_info* sysmmu_faults ; 
 int /*<<< orphan*/  FUNC12 (struct sysmmu_drvdata*) ; 
 struct sysmmu_fault_info* sysmmu_v5_faults ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC14(int irq, void *dev_id)
{
	/* SYSMMU is in blocked state when interrupt occurred. */
	struct sysmmu_drvdata *data = dev_id;
	const struct sysmmu_fault_info *finfo;
	unsigned int i, n, itype;
	sysmmu_iova_t fault_addr = -1;
	unsigned short reg_status, reg_clear;
	int ret = -ENOSYS;

	FUNC3(!data->active);

	if (FUNC2(data->version) < 5) {
		reg_status = REG_INT_STATUS;
		reg_clear = REG_INT_CLEAR;
		finfo = sysmmu_faults;
		n = FUNC0(sysmmu_faults);
	} else {
		reg_status = REG_V5_INT_STATUS;
		reg_clear = REG_V5_INT_CLEAR;
		finfo = sysmmu_v5_faults;
		n = FUNC0(sysmmu_v5_faults);
	}

	FUNC10(&data->lock);

	FUNC6(data->clk_master);

	itype = FUNC4(FUNC7(data->sfrbase + reg_status));
	for (i = 0; i < n; i++, finfo++)
		if (finfo->bit == itype)
			break;
	/* unknown/unsupported fault */
	FUNC1(i == n);

	/* print debug message */
	fault_addr = FUNC7(data->sfrbase + finfo->addr_reg);
	FUNC9(data, finfo, fault_addr);

	if (data->domain)
		ret = FUNC8(&data->domain->domain,
					data->master, fault_addr, finfo->type);
	/* fault is not recovered by fault handler */
	FUNC1(ret != 0);

	FUNC13(1 << itype, data->sfrbase + reg_clear);

	FUNC12(data);

	FUNC5(data->clk_master);

	FUNC11(&data->lock);

	return IRQ_HANDLED;
}
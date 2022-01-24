#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  int u32 ;
struct TYPE_5__ {int* ttbr; int* mair; } ;
struct TYPE_6__ {TYPE_1__ arm_lpae_s1_cfg; } ;
struct ipmmu_vmsa_domain {TYPE_4__* mmu; TYPE_2__ cfg; } ;
struct TYPE_8__ {TYPE_3__* features; } ;
struct TYPE_7__ {scalar_t__ setup_imbuscr; scalar_t__ cache_snoop; scalar_t__ twobit_imttbcr_sl0; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMBUSCR ; 
 int IMBUSCR_BUSSEL_MASK ; 
 int IMBUSCR_DVM ; 
 int /*<<< orphan*/  IMCTR ; 
 int IMCTR_FLUSH ; 
 int IMCTR_INTEN ; 
 int IMCTR_MMUEN ; 
 int /*<<< orphan*/  IMMAIR0 ; 
 int /*<<< orphan*/  IMSTR ; 
 int /*<<< orphan*/  IMTTBCR ; 
 int IMTTBCR_EAE ; 
 int IMTTBCR_IRGN0_WB_WA ; 
 int IMTTBCR_ORGN0_WB_WA ; 
 int IMTTBCR_SH0_INNER_SHAREABLE ; 
 int IMTTBCR_SL0_LVL_1 ; 
 int IMTTBCR_SL0_TWOBIT_LVL_1 ; 
 int /*<<< orphan*/  IMTTLBR0 ; 
 int /*<<< orphan*/  IMTTUBR0 ; 
 int FUNC0 (struct ipmmu_vmsa_domain*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipmmu_vmsa_domain*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ipmmu_vmsa_domain*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct ipmmu_vmsa_domain *domain)
{
	u64 ttbr;
	u32 tmp;

	/* TTBR0 */
	ttbr = domain->cfg.arm_lpae_s1_cfg.ttbr[0];
	FUNC2(domain, IMTTLBR0, ttbr);
	FUNC2(domain, IMTTUBR0, ttbr >> 32);

	/*
	 * TTBCR
	 * We use long descriptors and allocate the whole 32-bit VA space to
	 * TTBR0.
	 */
	if (domain->mmu->features->twobit_imttbcr_sl0)
		tmp = IMTTBCR_SL0_TWOBIT_LVL_1;
	else
		tmp = IMTTBCR_SL0_LVL_1;

	if (domain->mmu->features->cache_snoop)
		tmp |= IMTTBCR_SH0_INNER_SHAREABLE | IMTTBCR_ORGN0_WB_WA |
		       IMTTBCR_IRGN0_WB_WA;

	FUNC2(domain, IMTTBCR, IMTTBCR_EAE | tmp);

	/* MAIR0 */
	FUNC2(domain, IMMAIR0,
			     domain->cfg.arm_lpae_s1_cfg.mair[0]);

	/* IMBUSCR */
	if (domain->mmu->features->setup_imbuscr)
		FUNC2(domain, IMBUSCR,
				     FUNC0(domain, IMBUSCR) &
				     ~(IMBUSCR_DVM | IMBUSCR_BUSSEL_MASK));

	/*
	 * IMSTR
	 * Clear all interrupt flags.
	 */
	FUNC2(domain, IMSTR, FUNC0(domain, IMSTR));

	/*
	 * IMCTR
	 * Enable the MMU and interrupt generation. The long-descriptor
	 * translation table format doesn't use TEX remapping. Don't enable AF
	 * software management as we have no use for it. Flush the TLB as
	 * required when modifying the context registers.
	 */
	FUNC1(domain, IMCTR,
			    IMCTR_INTEN | IMCTR_FLUSH | IMCTR_MMUEN);
}
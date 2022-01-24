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
typedef  int u32 ;
struct tegra_smmu_soc {int num_tlb_lines; scalar_t__ supports_round_robin_arbitration; scalar_t__ supports_request_limit; int /*<<< orphan*/  num_asids; } ;
struct tegra_smmu {int pfn_mask; int tlb_mask; int /*<<< orphan*/  iommu; struct tegra_smmu_soc const* soc; struct tegra_mc* mc; struct device* dev; int /*<<< orphan*/  regs; int /*<<< orphan*/  lock; int /*<<< orphan*/  groups; void* asids; } ;
struct tegra_mc {TYPE_1__* soc; int /*<<< orphan*/  regs; struct tegra_smmu* smmu; } ;
struct device {int /*<<< orphan*/  fwnode; } ;
struct TYPE_2__ {int num_address_bits; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  CONFIG_DEBUG_FS ; 
 int ENOMEM ; 
 struct tegra_smmu* FUNC2 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  SMMU_CONFIG ; 
 int SMMU_CONFIG_ENABLE ; 
 int /*<<< orphan*/  SMMU_PTC_CONFIG ; 
 int SMMU_PTC_CONFIG_ENABLE ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  SMMU_TLB_CONFIG ; 
 int FUNC7 (struct tegra_smmu*) ; 
 int SMMU_TLB_CONFIG_HIT_UNDER_MISS ; 
 int SMMU_TLB_CONFIG_ROUND_ROBIN_ARBITRATION ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 void* FUNC11 (struct device*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,struct device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  platform_bus_type ; 
 int /*<<< orphan*/  FUNC19 (struct tegra_smmu*) ; 
 int /*<<< orphan*/  FUNC20 (struct tegra_smmu*) ; 
 int /*<<< orphan*/  FUNC21 (struct tegra_smmu*) ; 
 int /*<<< orphan*/  FUNC22 (struct tegra_smmu*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct tegra_smmu*) ; 
 int /*<<< orphan*/  tegra_smmu_ops ; 

struct tegra_smmu *FUNC25(struct device *dev,
				    const struct tegra_smmu_soc *soc,
				    struct tegra_mc *mc)
{
	struct tegra_smmu *smmu;
	size_t size;
	u32 value;
	int err;

	smmu = FUNC11(dev, sizeof(*smmu), GFP_KERNEL);
	if (!smmu)
		return FUNC2(-ENOMEM);

	/*
	 * This is a bit of a hack. Ideally we'd want to simply return this
	 * value. However the IOMMU registration process will attempt to add
	 * all devices to the IOMMU when bus_set_iommu() is called. In order
	 * not to rely on global variables to track the IOMMU instance, we
	 * set it here so that it can be looked up from the .add_device()
	 * callback via the IOMMU device's .drvdata field.
	 */
	mc->smmu = smmu;

	size = FUNC0(soc->num_asids) * sizeof(long);

	smmu->asids = FUNC11(dev, size, GFP_KERNEL);
	if (!smmu->asids)
		return FUNC2(-ENOMEM);

	FUNC3(&smmu->groups);
	FUNC18(&smmu->lock);

	smmu->regs = mc->regs;
	smmu->soc = soc;
	smmu->dev = dev;
	smmu->mc = mc;

	smmu->pfn_mask = FUNC1(mc->soc->num_address_bits - PAGE_SHIFT) - 1;
	FUNC9(dev, "address bits: %u, PFN mask: %#lx\n",
		mc->soc->num_address_bits, smmu->pfn_mask);
	smmu->tlb_mask = (smmu->soc->num_tlb_lines << 1) - 1;
	FUNC9(dev, "TLB lines: %u, mask: %#lx\n", smmu->soc->num_tlb_lines,
		smmu->tlb_mask);

	value = SMMU_PTC_CONFIG_ENABLE | FUNC5(0x3f);

	if (soc->supports_request_limit)
		value |= FUNC6(8);

	FUNC22(smmu, value, SMMU_PTC_CONFIG);

	value = SMMU_TLB_CONFIG_HIT_UNDER_MISS |
		FUNC7(smmu);

	if (soc->supports_round_robin_arbitration)
		value |= SMMU_TLB_CONFIG_ROUND_ROBIN_ARBITRATION;

	FUNC22(smmu, value, SMMU_TLB_CONFIG);

	FUNC20(smmu);
	FUNC21(smmu);
	FUNC22(smmu, SMMU_CONFIG_ENABLE, SMMU_CONFIG);
	FUNC19(smmu);

	FUNC23();

	err = FUNC15(&smmu->iommu, dev, NULL, FUNC10(dev));
	if (err)
		return FUNC2(err);

	FUNC14(&smmu->iommu, &tegra_smmu_ops);
	FUNC13(&smmu->iommu, dev->fwnode);

	err = FUNC12(&smmu->iommu);
	if (err) {
		FUNC16(&smmu->iommu);
		return FUNC2(err);
	}

	err = FUNC8(&platform_bus_type, &tegra_smmu_ops);
	if (err < 0) {
		FUNC17(&smmu->iommu);
		FUNC16(&smmu->iommu);
		return FUNC2(err);
	}

	if (FUNC4(CONFIG_DEBUG_FS))
		FUNC24(smmu);

	return smmu;
}
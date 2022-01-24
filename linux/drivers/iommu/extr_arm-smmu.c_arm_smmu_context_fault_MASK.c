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
struct iommu_domain {int dummy; } ;
struct TYPE_2__ {int cbndx; } ;
struct arm_smmu_domain {TYPE_1__ cfg; struct arm_smmu_device* smmu; } ;
struct arm_smmu_device {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_SMMU_CB_FAR ; 
 int /*<<< orphan*/  ARM_SMMU_CB_FSR ; 
 int /*<<< orphan*/  ARM_SMMU_CB_FSYNR0 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FSR_FAULT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int FUNC1 (struct arm_smmu_device*,int,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct arm_smmu_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct arm_smmu_device*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct arm_smmu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,unsigned long,int,int,int) ; 
 struct arm_smmu_domain* FUNC6 (struct iommu_domain*) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev)
{
	u32 fsr, fsynr, cbfrsynra;
	unsigned long iova;
	struct iommu_domain *domain = dev;
	struct arm_smmu_domain *smmu_domain = FUNC6(domain);
	struct arm_smmu_device *smmu = smmu_domain->smmu;
	int idx = smmu_domain->cfg.cbndx;

	fsr = FUNC1(smmu, idx, ARM_SMMU_CB_FSR);
	if (!(fsr & FSR_FAULT))
		return IRQ_NONE;

	fsynr = FUNC1(smmu, idx, ARM_SMMU_CB_FSYNR0);
	iova = FUNC2(smmu, idx, ARM_SMMU_CB_FAR);
	cbfrsynra = FUNC4(smmu, FUNC0(idx));

	FUNC5(smmu->dev,
	"Unhandled context fault: fsr=0x%x, iova=0x%08lx, fsynr=0x%x, cbfrsynra=0x%x, cb=%d\n",
			    fsr, iova, fsynr, cbfrsynra, idx);

	FUNC3(smmu, idx, ARM_SMMU_CB_FSR, fsr);
	return IRQ_HANDLED;
}
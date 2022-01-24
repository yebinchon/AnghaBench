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
struct sec_dev_info {int num_saas; scalar_t__* regs; int /*<<< orphan*/  dev; } ;
struct iommu_domain {int type; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ SEC_CLK_EN_REG ; 
 scalar_t__ SEC_FSM_MAX_CNT_REG ; 
 int SEC_Q_NUM ; 
 scalar_t__ FUNC1 (int) ; 
 size_t SEC_SAA ; 
 int __IOMMU_DOMAIN_PAGING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct iommu_domain* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sec_dev_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct sec_dev_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct sec_dev_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sec_dev_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sec_dev_info*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sec_dev_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sec_dev_info*,int) ; 
 int FUNC11 (struct sec_dev_info*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sec_dev_info*,int*) ; 
 int /*<<< orphan*/  FUNC13 (struct sec_dev_info*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sec_dev_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sec_dev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sec_dev_info*,int) ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct sec_dev_info *info)
{
	struct iommu_domain *domain;
	u32 sec_ipv4_mask = 0;
	u32 sec_ipv6_mask[10] = {};
	u32 i, ret;

	domain = FUNC3(info->dev);

	/*
	 * Enable all available processing unit clocks.
	 * Only the first cluster is usable with translations.
	 */
	if (domain && (domain->type & __IOMMU_DOMAIN_PAGING))
		info->num_saas = 5;

	else
		info->num_saas = 10;

	FUNC17(FUNC0(info->num_saas - 1, 0),
		       info->regs[SEC_SAA] + SEC_CLK_EN_REG);

	/* 32 bit little endian */
	FUNC4(info);

	FUNC5(info);

	/* Data axi port write and read outstanding config as per datasheet */
	FUNC10(info, 0x7);
	FUNC9(info, 0x7);

	/* Enable clock gating */
	FUNC6(info, true);

	/* Set CNT_CYC register not read clear */
	FUNC7(info, false);

	/* Enable CNT_CYC */
	FUNC8(info, false);

	FUNC17((u32)~0, info->regs[SEC_SAA] + SEC_FSM_MAX_CNT_REG);

	ret = FUNC11(info, sec_ipv4_mask);
	if (ret) {
		FUNC2(info->dev, "Failed to set ipv4 hashmask %d\n", ret);
		return -EIO;
	}

	FUNC12(info, sec_ipv6_mask);

	/*  do not use debug bd */
	FUNC15(info, 0);

	if (domain && (domain->type & __IOMMU_DOMAIN_PAGING)) {
		for (i = 0; i < SEC_Q_NUM; i++) {
			FUNC16(info, i);
			/* Same QoS for all queues */
			FUNC17(0x3f,
				       info->regs[SEC_SAA] +
				       FUNC1(i));
		}
	}

	for (i = 0; i < info->num_saas; i++) {
		FUNC13(info, i, 1);
		FUNC14(info, i, 0);
	}

	return 0;
}
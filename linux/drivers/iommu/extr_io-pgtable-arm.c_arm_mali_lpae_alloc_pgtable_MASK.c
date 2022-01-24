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
struct TYPE_2__ {int memattr; int transtab; } ;
struct io_pgtable_cfg {int ias; int oas; int pgsize_bitmap; TYPE_1__ arm_mali_lpae_cfg; scalar_t__ quirks; } ;
struct io_pgtable {int dummy; } ;
struct arm_lpae_io_pgtable {scalar_t__ levels; int pgd_size; struct io_pgtable iop; int /*<<< orphan*/  pgd; } ;
typedef  int /*<<< orphan*/  arm_lpae_iopte ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_LPAE_MAIR_ATTR_IDX_CACHE ; 
 int /*<<< orphan*/  ARM_LPAE_MAIR_ATTR_IDX_DEV ; 
 int /*<<< orphan*/  ARM_LPAE_MAIR_ATTR_IDX_NC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ARM_LPAE_MAX_LEVELS ; 
 int ARM_MALI_LPAE_MEMATTR_IMP_DEF ; 
 int ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC ; 
 int ARM_MALI_LPAE_TTBR_ADRMODE_TABLE ; 
 int ARM_MALI_LPAE_TTBR_READ_INNER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SZ_1G ; 
 int SZ_2M ; 
 int SZ_4K ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,struct io_pgtable_cfg*) ; 
 struct arm_lpae_io_pgtable* FUNC2 (struct io_pgtable_cfg*) ; 
 int /*<<< orphan*/  FUNC3 (struct arm_lpae_io_pgtable*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static struct io_pgtable *
FUNC6(struct io_pgtable_cfg *cfg, void *cookie)
{
	struct arm_lpae_io_pgtable *data;

	/* No quirks for Mali (hopefully) */
	if (cfg->quirks)
		return NULL;

	if (cfg->ias > 48 || cfg->oas > 40)
		return NULL;

	cfg->pgsize_bitmap &= (SZ_4K | SZ_2M | SZ_1G);

	data = FUNC2(cfg);
	if (!data)
		return NULL;

	/* Mali seems to need a full 4-level table regardless of IAS */
	if (data->levels < ARM_LPAE_MAX_LEVELS) {
		data->levels = ARM_LPAE_MAX_LEVELS;
		data->pgd_size = sizeof(arm_lpae_iopte);
	}
	/*
	 * MEMATTR: Mali has no actual notion of a non-cacheable type, so the
	 * best we can do is mimic the out-of-tree driver and hope that the
	 * "implementation-defined caching policy" is good enough. Similarly,
	 * we'll use it for the sake of a valid attribute for our 'device'
	 * index, although callers should never request that in practice.
	 */
	cfg->arm_mali_lpae_cfg.memattr =
		(ARM_MALI_LPAE_MEMATTR_IMP_DEF
		 << FUNC0(ARM_LPAE_MAIR_ATTR_IDX_NC)) |
		(ARM_MALI_LPAE_MEMATTR_WRITE_ALLOC
		 << FUNC0(ARM_LPAE_MAIR_ATTR_IDX_CACHE)) |
		(ARM_MALI_LPAE_MEMATTR_IMP_DEF
		 << FUNC0(ARM_LPAE_MAIR_ATTR_IDX_DEV));

	data->pgd = FUNC1(data->pgd_size, GFP_KERNEL, cfg);
	if (!data->pgd)
		goto out_free_data;

	/* Ensure the empty pgd is visible before TRANSTAB can be written */
	FUNC5();

	cfg->arm_mali_lpae_cfg.transtab = FUNC4(data->pgd) |
					  ARM_MALI_LPAE_TTBR_READ_INNER |
					  ARM_MALI_LPAE_TTBR_ADRMODE_TABLE;
	return &data->iop;

out_free_data:
	FUNC3(data);
	return NULL;
}
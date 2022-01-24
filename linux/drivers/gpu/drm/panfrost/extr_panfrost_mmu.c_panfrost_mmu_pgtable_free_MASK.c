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
struct panfrost_mmu {scalar_t__ as; int /*<<< orphan*/  pgtbl_ops; int /*<<< orphan*/  list; } ;
struct panfrost_file_priv {struct panfrost_mmu mmu; struct panfrost_device* pfdev; } ;
struct panfrost_device {int /*<<< orphan*/  as_lock; int /*<<< orphan*/  as_in_use_mask; int /*<<< orphan*/  as_alloc_mask; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct panfrost_device*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct panfrost_file_priv *priv)
{
	struct panfrost_device *pfdev = priv->pfdev;
	struct panfrost_mmu *mmu = &priv->mmu;

	FUNC7(&pfdev->as_lock);
	if (mmu->as >= 0) {
		FUNC5(pfdev->dev);
		if (FUNC4(pfdev->dev))
			FUNC3(pfdev, mmu->as);
		FUNC6(pfdev->dev);

		FUNC0(mmu->as, &pfdev->as_alloc_mask);
		FUNC0(mmu->as, &pfdev->as_in_use_mask);
		FUNC2(&mmu->list);
	}
	FUNC8(&pfdev->as_lock);

	FUNC1(mmu->pgtbl_ops);
}
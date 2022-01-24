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
struct iommu_dma_cookie {int type; int /*<<< orphan*/  msi_page_list; int /*<<< orphan*/  msi_lock; } ;
typedef  enum iommu_dma_cookie_type { ____Placeholder_iommu_dma_cookie_type } iommu_dma_cookie_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct iommu_dma_cookie* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iommu_dma_cookie *FUNC3(enum iommu_dma_cookie_type type)
{
	struct iommu_dma_cookie *cookie;

	cookie = FUNC1(sizeof(*cookie), GFP_KERNEL);
	if (cookie) {
		FUNC2(&cookie->msi_lock);
		FUNC0(&cookie->msi_page_list);
		cookie->type = type;
	}
	return cookie;
}
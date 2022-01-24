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
struct msm_priv {int dummy; } ;
struct iommu_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct msm_priv*) ; 
 int /*<<< orphan*/  msm_iommu_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct msm_priv* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static void FUNC4(struct iommu_domain *domain)
{
	struct msm_priv *priv;
	unsigned long flags;

	FUNC1(&msm_iommu_lock, flags);
	priv = FUNC3(domain);
	FUNC0(priv);
	FUNC2(&msm_iommu_lock, flags);
}
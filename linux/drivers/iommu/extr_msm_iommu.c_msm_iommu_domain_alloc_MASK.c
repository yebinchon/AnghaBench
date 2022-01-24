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
struct TYPE_2__ {unsigned long long aperture_end; int force_aperture; scalar_t__ aperture_start; } ;
struct iommu_domain {TYPE_1__ geometry; } ;
struct msm_priv {struct iommu_domain domain; int /*<<< orphan*/  list_attached; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned int IOMMU_DOMAIN_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 (struct msm_priv*) ; 
 struct msm_priv* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct iommu_domain *FUNC3(unsigned type)
{
	struct msm_priv *priv;

	if (type != IOMMU_DOMAIN_UNMANAGED)
		return NULL;

	priv = FUNC2(sizeof(*priv), GFP_KERNEL);
	if (!priv)
		goto fail_nomem;

	FUNC0(&priv->list_attached);

	priv->domain.geometry.aperture_start = 0;
	priv->domain.geometry.aperture_end   = (1ULL << 32) - 1;
	priv->domain.geometry.force_aperture = true;

	return &priv->domain;

fail_nomem:
	FUNC1(priv);
	return NULL;
}
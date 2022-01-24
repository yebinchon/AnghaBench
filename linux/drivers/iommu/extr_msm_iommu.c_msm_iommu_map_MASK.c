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
struct msm_priv {int /*<<< orphan*/  pgtlock; TYPE_1__* iop; } ;
struct iommu_domain {int dummy; } ;
typedef  int /*<<< orphan*/  phys_addr_t ;
struct TYPE_2__ {int (* map ) (TYPE_1__*,unsigned long,int /*<<< orphan*/ ,size_t,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC2 (TYPE_1__*,unsigned long,int /*<<< orphan*/ ,size_t,int) ; 
 struct msm_priv* FUNC3 (struct iommu_domain*) ; 

__attribute__((used)) static int FUNC4(struct iommu_domain *domain, unsigned long iova,
			 phys_addr_t pa, size_t len, int prot)
{
	struct msm_priv *priv = FUNC3(domain);
	unsigned long flags;
	int ret;

	FUNC0(&priv->pgtlock, flags);
	ret = priv->iop->map(priv->iop, iova, pa, len, prot);
	FUNC1(&priv->pgtlock, flags);

	return ret;
}
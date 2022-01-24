#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_6__ {void* pta_cpu; int /*<<< orphan*/  pta_dma; } ;
struct etnaviv_iommu_global {int version; int use; int /*<<< orphan*/  bad_page_dma; void* bad_page_cpu; int /*<<< orphan*/ * ops; int /*<<< orphan*/  lock; struct device* dev; TYPE_3__ v2; } ;
struct TYPE_5__ {int minor_features1; } ;
struct etnaviv_gpu {int /*<<< orphan*/  dev; TYPE_2__ identity; TYPE_1__* drm; } ;
struct etnaviv_drm_private {struct etnaviv_iommu_global* mmu_global; } ;
struct device {int dummy; } ;
typedef  enum etnaviv_iommu_version { ____Placeholder_etnaviv_iommu_version } etnaviv_iommu_version ;
struct TYPE_4__ {struct device* dev; struct etnaviv_drm_private* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENXIO ; 
 int ETNAVIV_IOMMU_V1 ; 
 int ETNAVIV_IOMMU_V2 ; 
 int ETNAVIV_PTA_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SZ_4K ; 
 int chipMinorFeatures1_MMU_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  etnaviv_iommuv1_ops ; 
 int /*<<< orphan*/  etnaviv_iommuv2_ops ; 
 int /*<<< orphan*/  FUNC3 (struct etnaviv_iommu_global*) ; 
 struct etnaviv_iommu_global* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct etnaviv_gpu *gpu)
{
	enum etnaviv_iommu_version version = ETNAVIV_IOMMU_V1;
	struct etnaviv_drm_private *priv = gpu->drm->dev_private;
	struct etnaviv_iommu_global *global;
	struct device *dev = gpu->drm->dev;

	if (gpu->identity.minor_features1 & chipMinorFeatures1_MMU_VERSION)
		version = ETNAVIV_IOMMU_V2;

	if (priv->mmu_global) {
		if (priv->mmu_global->version != version) {
			FUNC0(gpu->dev,
				"MMU version doesn't match global version\n");
			return -ENXIO;
		}

		priv->mmu_global->use++;
		return 0;
	}

	global = FUNC4(sizeof(*global), GFP_KERNEL);
	if (!global)
		return -ENOMEM;

	global->bad_page_cpu = FUNC1(dev, SZ_4K, &global->bad_page_dma,
					    GFP_KERNEL);
	if (!global->bad_page_cpu)
		goto free_global;

	FUNC5(global->bad_page_cpu, 0xdead55aa, SZ_4K / sizeof(u32));

	if (version == ETNAVIV_IOMMU_V2) {
		global->v2.pta_cpu = FUNC1(dev, ETNAVIV_PTA_SIZE,
					       &global->v2.pta_dma, GFP_KERNEL);
		if (!global->v2.pta_cpu)
			goto free_bad_page;
	}

	global->dev = dev;
	global->version = version;
	global->use = 1;
	FUNC6(&global->lock);

	if (version == ETNAVIV_IOMMU_V1)
		global->ops = &etnaviv_iommuv1_ops;
	else
		global->ops = &etnaviv_iommuv2_ops;

	priv->mmu_global = global;

	return 0;

free_bad_page:
	FUNC2(dev, SZ_4K, global->bad_page_cpu, global->bad_page_dma);
free_global:
	FUNC3(global);

	return -ENOMEM;
}
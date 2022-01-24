#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct etnaviv_iommu_global {scalar_t__ version; TYPE_1__* ops; int /*<<< orphan*/  dev; int /*<<< orphan*/  memory_base; } ;
struct TYPE_5__ {int iova; } ;
struct etnaviv_iommu_context {TYPE_2__ cmdbuf_mapping; } ;
struct etnaviv_cmdbuf_suballoc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* free ) (struct etnaviv_iommu_context*) ;} ;

/* Variables and functions */
 scalar_t__ ETNAVIV_IOMMU_V1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct etnaviv_cmdbuf_suballoc*,struct etnaviv_iommu_context*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct etnaviv_iommu_context*,TYPE_2__*) ; 
 struct etnaviv_iommu_context* FUNC3 (struct etnaviv_iommu_global*) ; 
 struct etnaviv_iommu_context* FUNC4 (struct etnaviv_iommu_global*) ; 
 int /*<<< orphan*/  FUNC5 (struct etnaviv_iommu_context*) ; 

struct etnaviv_iommu_context *
FUNC6(struct etnaviv_iommu_global *global,
			   struct etnaviv_cmdbuf_suballoc *suballoc)
{
	struct etnaviv_iommu_context *ctx;
	int ret;

	if (global->version == ETNAVIV_IOMMU_V1)
		ctx = FUNC3(global);
	else
		ctx = FUNC4(global);

	if (!ctx)
		return NULL;

	ret = FUNC1(suballoc, ctx, &ctx->cmdbuf_mapping,
					  global->memory_base);
	if (ret)
		goto out_free;

	if (global->version == ETNAVIV_IOMMU_V1 &&
	    ctx->cmdbuf_mapping.iova > 0x80000000) {
		FUNC0(global->dev,
		        "command buffer outside valid memory window\n");
		goto out_unmap;
	}

	return ctx;

out_unmap:
	FUNC2(ctx, &ctx->cmdbuf_mapping);
out_free:
	global->ops->free(ctx);
	return NULL;
}
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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  u64 ;
struct sg_table {int dummy; } ;
struct nouveau_cli {int dummy; } ;
struct nouveau_bo {int dummy; } ;
struct dma_resv {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nouveau_bo*) ; 
 int FUNC1 (struct nouveau_bo*) ; 
 struct nouveau_bo* FUNC2 (struct nouveau_cli*,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct nouveau_bo*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct sg_table*,struct dma_resv*) ; 

int
FUNC4(struct nouveau_cli *cli, u64 size, int align,
	       uint32_t flags, uint32_t tile_mode, uint32_t tile_flags,
	       struct sg_table *sg, struct dma_resv *robj,
	       struct nouveau_bo **pnvbo)
{
	struct nouveau_bo *nvbo;
	int ret;

	nvbo = FUNC2(cli, &size, &align, flags, tile_mode,
				tile_flags);
	if (FUNC0(nvbo))
		return FUNC1(nvbo);

	ret = FUNC3(nvbo, size, align, flags, sg, robj);
	if (ret)
		return ret;

	*pnvbo = nvbo;
	return 0;
}
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
typedef  int /*<<< orphan*/  u32 ;
struct sec4_sg_entry {int dummy; } ;
struct caam_hash_ctx {int /*<<< orphan*/  jrdev; } ;
struct ahash_edesc {int /*<<< orphan*/  hw_desc; } ;
typedef  int gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int GFP_DMA ; 
 int HDR_REVERSE ; 
 int HDR_SHARE_DEFER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct ahash_edesc* FUNC3 (int,int) ; 

__attribute__((used)) static struct ahash_edesc *FUNC4(struct caam_hash_ctx *ctx,
					     int sg_num, u32 *sh_desc,
					     dma_addr_t sh_desc_dma,
					     gfp_t flags)
{
	struct ahash_edesc *edesc;
	unsigned int sg_size = sg_num * sizeof(struct sec4_sg_entry);

	edesc = FUNC3(sizeof(*edesc) + sg_size, GFP_DMA | flags);
	if (!edesc) {
		FUNC1(ctx->jrdev, "could not allocate extended descriptor\n");
		return NULL;
	}

	FUNC2(edesc->hw_desc, sh_desc_dma, FUNC0(sh_desc),
			     HDR_SHARE_DEFER | HDR_REVERSE);

	return edesc;
}
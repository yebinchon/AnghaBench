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
struct mv_cesa_tdma_chain {int dummy; } ;
struct mv_cesa_ahash_dma_req {int /*<<< orphan*/  cache_dma; int /*<<< orphan*/  cache; } ;
struct TYPE_2__ {struct mv_cesa_ahash_dma_req dma; } ;
struct mv_cesa_ahash_req {int /*<<< orphan*/  cache_ptr; int /*<<< orphan*/  cache; TYPE_1__ req; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  CESA_SA_DATA_SRAM_OFFSET ; 
 int /*<<< orphan*/  CESA_TDMA_DST_IN_SRAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mv_cesa_ahash_dma_req*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mv_cesa_tdma_chain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct mv_cesa_tdma_chain *chain,
			    struct mv_cesa_ahash_req *creq,
			    gfp_t flags)
{
	struct mv_cesa_ahash_dma_req *ahashdreq = &creq->req.dma;
	int ret;

	if (!creq->cache_ptr)
		return 0;

	ret = FUNC1(ahashdreq, flags);
	if (ret)
		return ret;

	FUNC0(ahashdreq->cache, creq->cache, creq->cache_ptr);

	return FUNC2(chain,
					     CESA_SA_DATA_SRAM_OFFSET,
					     ahashdreq->cache_dma,
					     creq->cache_ptr,
					     CESA_TDMA_DST_IN_SRAM,
					     flags);
}
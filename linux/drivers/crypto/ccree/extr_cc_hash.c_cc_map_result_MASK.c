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
struct device {int dummy; } ;
struct ahash_req_ctx {int /*<<< orphan*/  digest_result_dma_addr; int /*<<< orphan*/  digest_result_buff; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev, struct ahash_req_ctx *state,
			 unsigned int digestsize)
{
	state->digest_result_dma_addr =
		FUNC2(dev, state->digest_result_buff,
			       digestsize, DMA_BIDIRECTIONAL);
	if (FUNC3(dev, state->digest_result_dma_addr)) {
		FUNC1(dev, "Mapping digest result buffer %u B for DMA failed\n",
			digestsize);
		return -ENOMEM;
	}
	FUNC0(dev, "Mapped digest result buffer %u B at va=%pK to dma=%pad\n",
		digestsize, state->digest_result_buff,
		&state->digest_result_dma_addr);

	return 0;
}
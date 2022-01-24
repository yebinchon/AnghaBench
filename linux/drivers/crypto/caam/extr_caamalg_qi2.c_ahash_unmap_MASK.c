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
struct caam_hash_state {scalar_t__ buf_dma; } ;
struct ahash_request {int /*<<< orphan*/  src; } ;
struct ahash_edesc {scalar_t__ qm_sg_bytes; scalar_t__ qm_sg_dma; scalar_t__ src_nents; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 struct caam_hash_state* FUNC0 (struct ahash_request*) ; 
 scalar_t__* FUNC1 (struct caam_hash_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC4(struct device *dev, struct ahash_edesc *edesc,
			       struct ahash_request *req)
{
	struct caam_hash_state *state = FUNC0(req);

	if (edesc->src_nents)
		FUNC2(dev, req->src, edesc->src_nents, DMA_TO_DEVICE);

	if (edesc->qm_sg_bytes)
		FUNC3(dev, edesc->qm_sg_dma, edesc->qm_sg_bytes,
				 DMA_TO_DEVICE);

	if (state->buf_dma) {
		FUNC3(dev, state->buf_dma, *FUNC1(state),
				 DMA_TO_DEVICE);
		state->buf_dma = 0;
	}
}
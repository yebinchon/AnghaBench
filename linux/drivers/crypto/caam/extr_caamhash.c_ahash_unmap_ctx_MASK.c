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
struct device {int dummy; } ;
struct caam_hash_state {scalar_t__ ctx_dma; int /*<<< orphan*/  ctx_dma_len; } ;
struct ahash_request {int dummy; } ;
struct ahash_edesc {int dummy; } ;

/* Variables and functions */
 struct caam_hash_state* FUNC0 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct ahash_edesc*,struct ahash_request*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct device *dev,
			struct ahash_edesc *edesc,
			struct ahash_request *req, int dst_len, u32 flag)
{
	struct caam_hash_state *state = FUNC0(req);

	if (state->ctx_dma) {
		FUNC2(dev, state->ctx_dma, state->ctx_dma_len, flag);
		state->ctx_dma = 0;
	}
	FUNC1(dev, edesc, req, dst_len);
}
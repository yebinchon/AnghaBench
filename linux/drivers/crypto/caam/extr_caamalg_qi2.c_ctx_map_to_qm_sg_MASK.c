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
struct dpaa2_sg_entry {int dummy; } ;
struct device {int dummy; } ;
struct caam_hash_state {int ctx_dma_len; scalar_t__ ctx_dma; int /*<<< orphan*/  caam_ctx; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 scalar_t__ FUNC1 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_sg_entry*,scalar_t__,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC4(struct device *dev,
				   struct caam_hash_state *state, int ctx_len,
				   struct dpaa2_sg_entry *qm_sg, u32 flag)
{
	state->ctx_dma_len = ctx_len;
	state->ctx_dma = FUNC1(dev, state->caam_ctx, ctx_len, flag);
	if (FUNC2(dev, state->ctx_dma)) {
		FUNC0(dev, "unable to map ctx\n");
		state->ctx_dma = 0;
		return -ENOMEM;
	}

	FUNC3(qm_sg, state->ctx_dma, ctx_len, 0);

	return 0;
}
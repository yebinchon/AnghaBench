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
struct skcipher_request {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  cryptlen; } ;
struct mv_cesa_skcipher_dma_iter {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct mv_cesa_skcipher_dma_iter *iter,
			       struct skcipher_request *req)
{
	FUNC0(&iter->base, req->cryptlen);
	FUNC1(&iter->src, req->src, DMA_TO_DEVICE);
	FUNC1(&iter->dst, req->dst, DMA_FROM_DEVICE);
}
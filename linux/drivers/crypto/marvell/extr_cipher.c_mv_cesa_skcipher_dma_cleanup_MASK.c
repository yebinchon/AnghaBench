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
struct skcipher_request {scalar_t__ dst; scalar_t__ src; } ;
struct mv_cesa_skcipher_req {int /*<<< orphan*/  base; int /*<<< orphan*/  src_nents; int /*<<< orphan*/  dst_nents; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 TYPE_1__* cesa_dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mv_cesa_skcipher_req* FUNC2 (struct skcipher_request*) ; 

__attribute__((used)) static inline void
FUNC3(struct skcipher_request *req)
{
	struct mv_cesa_skcipher_req *creq = FUNC2(req);

	if (req->dst != req->src) {
		FUNC0(cesa_dev->dev, req->dst, creq->dst_nents,
			     DMA_FROM_DEVICE);
		FUNC0(cesa_dev->dev, req->src, creq->src_nents,
			     DMA_TO_DEVICE);
	} else {
		FUNC0(cesa_dev->dev, req->src, creq->src_nents,
			     DMA_BIDIRECTIONAL);
	}
	FUNC1(&creq->base);
}
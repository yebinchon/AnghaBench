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
struct scatterlist {int dummy; } ;
struct nitrox_aead_rctx {struct scatterlist* dst; struct scatterlist* src; } ;
struct nitrox_rfc4106_rctx {struct scatterlist* dst; struct scatterlist* src; int /*<<< orphan*/  assoc; struct nitrox_aead_rctx base; } ;
struct aead_request {unsigned int assoclen; int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int EINVAL ; 
 unsigned int GCM_RFC4106_IV_SIZE ; 
 struct nitrox_rfc4106_rctx* FUNC0 (struct aead_request*) ; 
 struct scatterlist* FUNC1 (struct scatterlist*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scatterlist*,int,struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC4 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct aead_request *areq)
{
	struct nitrox_rfc4106_rctx *rctx = FUNC0(areq);
	struct nitrox_aead_rctx *aead_rctx = &rctx->base;
	unsigned int assoclen = areq->assoclen - GCM_RFC4106_IV_SIZE;
	struct scatterlist *sg;

	if (areq->assoclen != 16 && areq->assoclen != 20)
		return -EINVAL;

	FUNC2(rctx->assoc, areq->src, 0, assoclen, 0);
	FUNC4(rctx->src, 3);
	FUNC5(rctx->src, rctx->assoc, assoclen);
	sg = FUNC1(rctx->src + 1, areq->src, areq->assoclen);
	if (sg != rctx->src + 1)
		FUNC3(rctx->src, 2, sg);

	if (areq->src != areq->dst) {
		FUNC4(rctx->dst, 3);
		FUNC5(rctx->dst, rctx->assoc, assoclen);
		sg = FUNC1(rctx->dst + 1, areq->dst, areq->assoclen);
		if (sg != rctx->dst + 1)
			FUNC3(rctx->dst, 2, sg);
	}

	aead_rctx->src = rctx->src;
	aead_rctx->dst = (areq->src == areq->dst) ? rctx->src : rctx->dst;

	return 0;
}
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
struct scatterlist {int dummy; } ;
struct mtk_cryp {int dummy; } ;
struct TYPE_2__ {int nents; scalar_t__ remainder; struct scatterlist* sg; } ;
struct mtk_aes_rec {size_t total; int /*<<< orphan*/  buf; struct scatterlist aligned_sg; TYPE_1__ dst; TYPE_1__ src; struct scatterlist* real_dst; } ;

/* Variables and functions */
 size_t AES_BUF_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC0 (struct scatterlist*,size_t,TYPE_1__*) ; 
 int FUNC1 (struct mtk_cryp*,struct mtk_aes_rec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mtk_cryp*,struct mtk_aes_rec*,size_t) ; 
 int FUNC3 (struct mtk_cryp*,struct mtk_aes_rec*) ; 
 size_t FUNC4 (size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scatterlist*) ; 
 int /*<<< orphan*/  FUNC8 (struct scatterlist*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC9(struct mtk_cryp *cryp, struct mtk_aes_rec *aes,
		       struct scatterlist *src, struct scatterlist *dst,
		       size_t len)
{
	size_t padlen = 0;
	bool src_aligned, dst_aligned;

	aes->total = len;
	aes->src.sg = src;
	aes->dst.sg = dst;
	aes->real_dst = dst;

	src_aligned = FUNC0(src, len, &aes->src);
	if (src == dst)
		dst_aligned = src_aligned;
	else
		dst_aligned = FUNC0(dst, len, &aes->dst);

	if (!src_aligned || !dst_aligned) {
		padlen = FUNC4(len);

		if (len + padlen > AES_BUF_SIZE)
			return FUNC1(cryp, aes, -ENOMEM);

		if (!src_aligned) {
			FUNC5(src, FUNC7(src), aes->buf, len);
			aes->src.sg = &aes->aligned_sg;
			aes->src.nents = 1;
			aes->src.remainder = 0;
		}

		if (!dst_aligned) {
			aes->dst.sg = &aes->aligned_sg;
			aes->dst.nents = 1;
			aes->dst.remainder = 0;
		}

		FUNC6(&aes->aligned_sg, 1);
		FUNC8(&aes->aligned_sg, aes->buf, len + padlen);
	}

	FUNC2(cryp, aes, len + padlen);

	return FUNC3(cryp, aes);
}
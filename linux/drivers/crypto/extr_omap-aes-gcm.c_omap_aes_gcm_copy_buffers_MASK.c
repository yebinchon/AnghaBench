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
typedef  int u16 ;
struct scatterlist {int dummy; } ;
struct omap_aes_dev {int flags; int total; int assoc_len; unsigned int authsize; struct scatterlist* out_sg; void* out_sg_len; struct scatterlist* in_sg; void* in_sg_len; struct scatterlist out_sgl; struct scatterlist* orig_out; struct scatterlist* in_sgl; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int assoclen; int cryptlen; struct scatterlist* dst; struct scatterlist* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAGS_ASSOC_DATA_ST_SHIFT ; 
 int FLAGS_ENCRYPT ; 
 int /*<<< orphan*/  FLAGS_IN_DATA_ST_SHIFT ; 
 int /*<<< orphan*/  FLAGS_OUT_DATA_ST_SHIFT ; 
 int FLAGS_RFC4106_GCM ; 
 int OMAP_CRYPTO_COPY_DATA ; 
 int OMAP_CRYPTO_FORCE_COPY ; 
 int OMAP_CRYPTO_FORCE_SINGLE_ENTRY ; 
 int OMAP_CRYPTO_ZERO_BUF ; 
 unsigned int FUNC1 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC2 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct omap_aes_dev*) ; 
 int FUNC4 (struct scatterlist**,int,int /*<<< orphan*/ ,struct scatterlist*,int,int /*<<< orphan*/ ,int*) ; 
 void* FUNC5 (struct scatterlist*,struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,int) ; 
 void* FUNC7 (struct scatterlist*,int) ; 

__attribute__((used)) static int FUNC8(struct omap_aes_dev *dd,
				     struct aead_request *req)
{
	int alen, clen, cryptlen, assoclen, ret;
	struct crypto_aead *aead = FUNC2(req);
	unsigned int authlen = FUNC1(aead);
	struct scatterlist *tmp, sg_arr[2];
	int nsg;
	u16 flags;

	assoclen = req->assoclen;
	cryptlen = req->cryptlen;

	if (dd->flags & FLAGS_RFC4106_GCM)
		assoclen -= 8;

	if (!(dd->flags & FLAGS_ENCRYPT))
		cryptlen -= authlen;

	alen = FUNC0(assoclen, AES_BLOCK_SIZE);
	clen = FUNC0(cryptlen, AES_BLOCK_SIZE);

	nsg = !!(assoclen && cryptlen);

	FUNC3(dd);

	FUNC6(dd->in_sgl, nsg + 1);
	if (assoclen) {
		tmp = req->src;
		ret = FUNC4(&tmp, assoclen,
					   AES_BLOCK_SIZE, dd->in_sgl,
					   OMAP_CRYPTO_COPY_DATA |
					   OMAP_CRYPTO_ZERO_BUF |
					   OMAP_CRYPTO_FORCE_SINGLE_ENTRY,
					   FLAGS_ASSOC_DATA_ST_SHIFT,
					   &dd->flags);
	}

	if (cryptlen) {
		tmp = FUNC5(sg_arr, req->src, req->assoclen);

		ret = FUNC4(&tmp, cryptlen,
					   AES_BLOCK_SIZE, &dd->in_sgl[nsg],
					   OMAP_CRYPTO_COPY_DATA |
					   OMAP_CRYPTO_ZERO_BUF |
					   OMAP_CRYPTO_FORCE_SINGLE_ENTRY,
					   FLAGS_IN_DATA_ST_SHIFT,
					   &dd->flags);
	}

	dd->in_sg = dd->in_sgl;
	dd->total = cryptlen;
	dd->assoc_len = assoclen;
	dd->authsize = authlen;

	dd->out_sg = req->dst;
	dd->orig_out = req->dst;

	dd->out_sg = FUNC5(sg_arr, req->dst, assoclen);

	flags = 0;
	if (req->src == req->dst || dd->out_sg == sg_arr)
		flags |= OMAP_CRYPTO_FORCE_COPY;

	ret = FUNC4(&dd->out_sg, cryptlen,
				   AES_BLOCK_SIZE, &dd->out_sgl,
				   flags,
				   FLAGS_OUT_DATA_ST_SHIFT, &dd->flags);
	if (ret)
		return ret;

	dd->in_sg_len = FUNC7(dd->in_sg, alen + clen);
	dd->out_sg_len = FUNC7(dd->out_sg, clen);

	return 0;
}
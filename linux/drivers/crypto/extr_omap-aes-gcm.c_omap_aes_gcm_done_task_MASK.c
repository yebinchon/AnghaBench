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
typedef  scalar_t__ u8 ;
struct omap_aes_reqctx {scalar_t__ auth_tag; } ;
struct omap_aes_dev {int assoc_len; int total; int flags; int authsize; int /*<<< orphan*/  dev; int /*<<< orphan*/ * in_sgl; TYPE_1__* aead_req; int /*<<< orphan*/ * orig_out; int /*<<< orphan*/ * out_sg; int /*<<< orphan*/  out_sg_len; int /*<<< orphan*/  in_sg_len; int /*<<< orphan*/ * in_sg; } ;
struct TYPE_2__ {int assoclen; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_BLOCK_SIZE ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EBADMSG ; 
 int /*<<< orphan*/  FLAGS_ASSOC_DATA_ST_SHIFT ; 
 int FLAGS_ENCRYPT ; 
 int /*<<< orphan*/  FLAGS_IN_DATA_ST_SHIFT ; 
 int /*<<< orphan*/  FLAGS_OUT_DATA_ST_SHIFT ; 
 struct omap_aes_reqctx* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_aes_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_aes_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_aes_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void FUNC10(struct omap_aes_dev *dd)
{
	u8 *tag;
	int alen, clen, i, ret = 0, nsg;
	struct omap_aes_reqctx *rctx;

	alen = FUNC0(dd->assoc_len, AES_BLOCK_SIZE);
	clen = FUNC0(dd->total, AES_BLOCK_SIZE);
	rctx = FUNC1(dd->aead_req);

	nsg = !!(dd->assoc_len && dd->total);

	FUNC3(dd->dev, dd->out_sg, dd->out_sg_len,
			       DMA_FROM_DEVICE);
	FUNC4(dd->dev, dd->in_sg, dd->in_sg_len, DMA_TO_DEVICE);
	FUNC4(dd->dev, dd->out_sg, dd->out_sg_len, DMA_FROM_DEVICE);
	FUNC5(dd);

	FUNC8(dd->out_sg, dd->orig_out,
			    dd->aead_req->assoclen, dd->total,
			    FLAGS_OUT_DATA_ST_SHIFT, dd->flags);

	if (dd->flags & FLAGS_ENCRYPT)
		FUNC9(rctx->auth_tag,
					 dd->aead_req->dst,
					 dd->total + dd->aead_req->assoclen,
					 dd->authsize, 1);

	FUNC8(&dd->in_sgl[0], NULL, 0, alen,
			    FLAGS_ASSOC_DATA_ST_SHIFT, dd->flags);

	FUNC8(&dd->in_sgl[nsg], NULL, 0, clen,
			    FLAGS_IN_DATA_ST_SHIFT, dd->flags);

	if (!(dd->flags & FLAGS_ENCRYPT)) {
		tag = (u8 *)rctx->auth_tag;
		for (i = 0; i < dd->authsize; i++) {
			if (tag[i]) {
				FUNC2(dd->dev, "GCM decryption: Tag Message is wrong\n");
				ret = -EBADMSG;
			}
		}
	}

	FUNC6(dd, ret);
	FUNC7(dd, NULL);
}
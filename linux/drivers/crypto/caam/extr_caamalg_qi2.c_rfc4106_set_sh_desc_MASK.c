#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct device {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct caam_flc {void** flc; int /*<<< orphan*/ * sh_desc; } ;
struct TYPE_3__ {int keylen; int key_inline; int /*<<< orphan*/  key_dma; int /*<<< orphan*/  key_virt; } ;
struct caam_ctx {int /*<<< orphan*/  dir; int /*<<< orphan*/ * flc_dma; int /*<<< orphan*/  authsize; TYPE_1__ cdata; struct caam_flc* flc; int /*<<< orphan*/  key_dma; int /*<<< orphan*/  key; struct device* dev; } ;

/* Variables and functions */
 int CAAM_DESC_BYTES_MAX ; 
 size_t DECRYPT ; 
 int DESC_JOB_IO_LEN ; 
 int DESC_QI_RFC4106_DEC_LEN ; 
 int DESC_QI_RFC4106_ENC_LEN ; 
 size_t ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 struct caam_ctx* FUNC3 (struct crypto_aead*) ; 
 unsigned int FUNC4 (struct crypto_aead*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct crypto_aead *aead)
{
	struct caam_ctx *ctx = FUNC3(aead);
	struct device *dev = ctx->dev;
	unsigned int ivsize = FUNC4(aead);
	struct caam_flc *flc;
	u32 *desc;
	int rem_bytes = CAAM_DESC_BYTES_MAX - DESC_JOB_IO_LEN -
			ctx->cdata.keylen;

	if (!ctx->cdata.keylen || !ctx->authsize)
		return 0;

	ctx->cdata.key_virt = ctx->key;

	/*
	 * RFC4106 encrypt shared descriptor
	 * Job Descriptor and Shared Descriptor
	 * must fit into the 64-word Descriptor h/w Buffer
	 */
	if (rem_bytes >= DESC_QI_RFC4106_ENC_LEN) {
		ctx->cdata.key_inline = true;
	} else {
		ctx->cdata.key_inline = false;
		ctx->cdata.key_dma = ctx->key_dma;
	}

	flc = &ctx->flc[ENCRYPT];
	desc = flc->sh_desc;
	FUNC1(desc, &ctx->cdata, ivsize, ctx->authsize,
				  true);
	flc->flc[1] = FUNC2(FUNC6(desc)); /* SDL */
	FUNC7(dev, ctx->flc_dma[ENCRYPT],
				   sizeof(flc->flc) + FUNC5(desc),
				   ctx->dir);

	/*
	 * Job Descriptor and Shared Descriptors
	 * must all fit into the 64-word Descriptor h/w Buffer
	 */
	if (rem_bytes >= DESC_QI_RFC4106_DEC_LEN) {
		ctx->cdata.key_inline = true;
	} else {
		ctx->cdata.key_inline = false;
		ctx->cdata.key_dma = ctx->key_dma;
	}

	flc = &ctx->flc[DECRYPT];
	desc = flc->sh_desc;
	FUNC0(desc, &ctx->cdata, ivsize, ctx->authsize,
				  true);
	flc->flc[1] = FUNC2(FUNC6(desc)); /* SDL */
	FUNC7(dev, ctx->flc_dma[DECRYPT],
				   sizeof(flc->flc) + FUNC5(desc),
				   ctx->dir);

	return 0;
}
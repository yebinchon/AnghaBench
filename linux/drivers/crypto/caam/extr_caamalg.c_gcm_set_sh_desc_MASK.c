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
struct TYPE_3__ {int keylen; int key_inline; int /*<<< orphan*/  key_dma; int /*<<< orphan*/  key_virt; } ;
struct caam_ctx {int /*<<< orphan*/  dir; int /*<<< orphan*/  sh_desc_dec_dma; int /*<<< orphan*/  authsize; TYPE_1__ cdata; int /*<<< orphan*/ * sh_desc_dec; int /*<<< orphan*/  key_dma; int /*<<< orphan*/  key; int /*<<< orphan*/  sh_desc_enc_dma; int /*<<< orphan*/ * sh_desc_enc; struct device* jrdev; } ;

/* Variables and functions */
 int CAAM_DESC_BYTES_MAX ; 
 int DESC_GCM_DEC_LEN ; 
 int DESC_GCM_ENC_LEN ; 
 int GCM_DESC_JOB_IO_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,unsigned int,int /*<<< orphan*/ ,int) ; 
 struct caam_ctx* FUNC2 (struct crypto_aead*) ; 
 unsigned int FUNC3 (struct crypto_aead*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct crypto_aead *aead)
{
	struct caam_ctx *ctx = FUNC2(aead);
	struct device *jrdev = ctx->jrdev;
	unsigned int ivsize = FUNC3(aead);
	u32 *desc;
	int rem_bytes = CAAM_DESC_BYTES_MAX - GCM_DESC_JOB_IO_LEN -
			ctx->cdata.keylen;

	if (!ctx->cdata.keylen || !ctx->authsize)
		return 0;

	/*
	 * AES GCM encrypt shared descriptor
	 * Job Descriptor and Shared Descriptor
	 * must fit into the 64-word Descriptor h/w Buffer
	 */
	if (rem_bytes >= DESC_GCM_ENC_LEN) {
		ctx->cdata.key_inline = true;
		ctx->cdata.key_virt = ctx->key;
	} else {
		ctx->cdata.key_inline = false;
		ctx->cdata.key_dma = ctx->key_dma;
	}

	desc = ctx->sh_desc_enc;
	FUNC1(desc, &ctx->cdata, ivsize, ctx->authsize, false);
	FUNC5(jrdev, ctx->sh_desc_enc_dma,
				   FUNC4(desc), ctx->dir);

	/*
	 * Job Descriptor and Shared Descriptors
	 * must all fit into the 64-word Descriptor h/w Buffer
	 */
	if (rem_bytes >= DESC_GCM_DEC_LEN) {
		ctx->cdata.key_inline = true;
		ctx->cdata.key_virt = ctx->key;
	} else {
		ctx->cdata.key_inline = false;
		ctx->cdata.key_dma = ctx->key_dma;
	}

	desc = ctx->sh_desc_dec;
	FUNC0(desc, &ctx->cdata, ivsize, ctx->authsize, false);
	FUNC5(jrdev, ctx->sh_desc_dec_dma,
				   FUNC4(desc), ctx->dir);

	return 0;
}
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
struct omap_aes_reqctx {unsigned long mode; scalar_t__ auth_tag; scalar_t__ iv; } ;
struct omap_aes_dev {int dummy; } ;
struct crypto_aead {int dummy; } ;
struct aead_request {int assoclen; scalar_t__ cryptlen; int /*<<< orphan*/  dst; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int ENODEV ; 
 unsigned long FLAGS_RFC4106_GCM ; 
 scalar_t__ GCM_AES_IV_SIZE ; 
 struct omap_aes_reqctx* FUNC0 (struct aead_request*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int FUNC2 (struct crypto_aead*) ; 
 struct crypto_aead* FUNC3 (struct aead_request*) ; 
 int FUNC4 (struct aead_request*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 struct omap_aes_dev* FUNC7 (struct omap_aes_reqctx*) ; 
 int FUNC8 (struct omap_aes_dev*,struct aead_request*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int) ; 

__attribute__((used)) static int FUNC10(struct aead_request *req, unsigned long mode)
{
	struct omap_aes_reqctx *rctx = FUNC0(req);
	struct crypto_aead *aead = FUNC3(req);
	unsigned int authlen = FUNC2(aead);
	struct omap_aes_dev *dd;
	__be32 counter = FUNC1(1);
	int err, assoclen;

	FUNC6(rctx->auth_tag, 0, sizeof(rctx->auth_tag));
	FUNC5(rctx->iv + GCM_AES_IV_SIZE, &counter, 4);

	err = FUNC4(req, (u32 *)rctx->auth_tag, (u32 *)rctx->iv);
	if (err)
		return err;

	if (mode & FLAGS_RFC4106_GCM)
		assoclen = req->assoclen - 8;
	else
		assoclen = req->assoclen;
	if (assoclen + req->cryptlen == 0) {
		FUNC9(rctx->auth_tag, req->dst, 0, authlen,
					 1);
		return 0;
	}

	dd = FUNC7(rctx);
	if (!dd)
		return -ENODEV;
	rctx->mode = mode;

	return FUNC8(dd, req);
}
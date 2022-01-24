#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct omap_aes_reqctx {scalar_t__ iv; } ;
struct omap_aes_dev {int flags; TYPE_2__* ctx; TYPE_3__* aead_req; TYPE_1__* req; } ;
struct TYPE_6__ {scalar_t__ iv; } ;
struct TYPE_5__ {int keylen; int /*<<< orphan*/ * key; } ;
struct TYPE_4__ {int* info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct omap_aes_dev*) ; 
 int AES_REG_CTRL_CBC ; 
 int AES_REG_CTRL_CTR ; 
 int AES_REG_CTRL_CTR_WIDTH_128 ; 
 int AES_REG_CTRL_DIRECTION ; 
 int AES_REG_CTRL_GCM ; 
 int /*<<< orphan*/  AES_REG_CTRL_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct omap_aes_dev*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct omap_aes_dev*,int) ; 
 int FLAGS_CBC ; 
 int FLAGS_CTR ; 
 int FLAGS_ENCRYPT ; 
 int FLAGS_GCM ; 
 int FUNC3 (int,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 struct omap_aes_reqctx* FUNC5 (TYPE_3__*) ; 
 int FUNC6 (struct omap_aes_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_aes_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_aes_dev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct omap_aes_dev*,int /*<<< orphan*/ ,int*,int) ; 

int FUNC10(struct omap_aes_dev *dd)
{
	struct omap_aes_reqctx *rctx;
	unsigned int key32;
	int i, err;
	u32 val;

	err = FUNC6(dd);
	if (err)
		return err;

	key32 = dd->ctx->keylen / sizeof(u32);

	/* RESET the key as previous HASH keys should not get affected*/
	if (dd->flags & FLAGS_GCM)
		for (i = 0; i < 0x40; i = i + 4)
			FUNC7(dd, i, 0x0);

	for (i = 0; i < key32; i++) {
		FUNC7(dd, FUNC2(dd, i),
			FUNC4(dd->ctx->key[i]));
	}

	if ((dd->flags & (FLAGS_CBC | FLAGS_CTR)) && dd->req->info)
		FUNC9(dd, FUNC1(dd, 0), dd->req->info, 4);

	if ((dd->flags & (FLAGS_GCM)) && dd->aead_req->iv) {
		rctx = FUNC5(dd->aead_req);
		FUNC9(dd, FUNC1(dd, 0), (u32 *)rctx->iv, 4);
	}

	val = FUNC3(((dd->ctx->keylen >> 3) - 1), 4, 3);
	if (dd->flags & FLAGS_CBC)
		val |= AES_REG_CTRL_CBC;

	if (dd->flags & (FLAGS_CTR | FLAGS_GCM))
		val |= AES_REG_CTRL_CTR | AES_REG_CTRL_CTR_WIDTH_128;

	if (dd->flags & FLAGS_GCM)
		val |= AES_REG_CTRL_GCM;

	if (dd->flags & FLAGS_ENCRYPT)
		val |= AES_REG_CTRL_DIRECTION;

	FUNC8(dd, FUNC0(dd), val, AES_REG_CTRL_MASK);

	return 0;
}
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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct s5p_aes_dev {int busy; int /*<<< orphan*/  lock; int /*<<< orphan*/  sg_dst; int /*<<< orphan*/  sg_src; TYPE_1__* ctx; struct ablkcipher_request* req; } ;
struct ablkcipher_request {int /*<<< orphan*/ * info; } ;
struct TYPE_2__ {scalar_t__ keylen; int /*<<< orphan*/  aes_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  AES_CONTROL ; 
 scalar_t__ AES_KEYSIZE_192 ; 
 scalar_t__ AES_KEYSIZE_256 ; 
 int /*<<< orphan*/  FCFIFOCTRL ; 
 int /*<<< orphan*/  FCINTENCLR ; 
 int /*<<< orphan*/  FCINTENSET ; 
 unsigned long FLAGS_AES_CBC ; 
 unsigned long FLAGS_AES_CTR ; 
 unsigned long FLAGS_AES_DECRYPT ; 
 unsigned long FLAGS_AES_MODE_MASK ; 
 int SSS_AES_BYTESWAP_CNT ; 
 int SSS_AES_BYTESWAP_DI ; 
 int SSS_AES_BYTESWAP_DO ; 
 int SSS_AES_BYTESWAP_IV ; 
 int SSS_AES_BYTESWAP_KEY ; 
 int SSS_AES_CHAIN_MODE_CBC ; 
 int SSS_AES_CHAIN_MODE_CTR ; 
 int SSS_AES_FIFO_MODE ; 
 int SSS_AES_KEY_CHANGE_MODE ; 
 int SSS_AES_KEY_SIZE_192 ; 
 int SSS_AES_KEY_SIZE_256 ; 
 int SSS_AES_MODE_DECRYPT ; 
 int /*<<< orphan*/  FUNC0 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int SSS_FCINTENCLR_BRDMAINTENCLR ; 
 int SSS_FCINTENCLR_BTDMAINTENCLR ; 
 int SSS_FCINTENSET_BRDMAINTENSET ; 
 int SSS_FCINTENSET_BTDMAINTENSET ; 
 int /*<<< orphan*/  FUNC1 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ablkcipher_request*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct s5p_aes_dev*,struct ablkcipher_request*) ; 
 int FUNC7 (struct s5p_aes_dev*,struct ablkcipher_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct s5p_aes_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct s5p_aes_dev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct s5p_aes_dev *dev, unsigned long mode)
{
	struct ablkcipher_request *req = dev->req;
	u32 aes_control;
	unsigned long flags;
	int err;
	u8 *iv, *ctr;

	/* This sets bit [13:12] to 00, which selects 128-bit counter */
	aes_control = SSS_AES_KEY_CHANGE_MODE;
	if (mode & FLAGS_AES_DECRYPT)
		aes_control |= SSS_AES_MODE_DECRYPT;

	if ((mode & FLAGS_AES_MODE_MASK) == FLAGS_AES_CBC) {
		aes_control |= SSS_AES_CHAIN_MODE_CBC;
		iv = req->info;
		ctr = NULL;
	} else if ((mode & FLAGS_AES_MODE_MASK) == FLAGS_AES_CTR) {
		aes_control |= SSS_AES_CHAIN_MODE_CTR;
		iv = NULL;
		ctr = req->info;
	} else {
		iv = NULL; /* AES_ECB */
		ctr = NULL;
	}

	if (dev->ctx->keylen == AES_KEYSIZE_192)
		aes_control |= SSS_AES_KEY_SIZE_192;
	else if (dev->ctx->keylen == AES_KEYSIZE_256)
		aes_control |= SSS_AES_KEY_SIZE_256;

	aes_control |= SSS_AES_FIFO_MODE;

	/* as a variant it is possible to use byte swapping on DMA side */
	aes_control |= SSS_AES_BYTESWAP_DI
		    |  SSS_AES_BYTESWAP_DO
		    |  SSS_AES_BYTESWAP_IV
		    |  SSS_AES_BYTESWAP_KEY
		    |  SSS_AES_BYTESWAP_CNT;

	FUNC10(&dev->lock, flags);

	FUNC1(dev, FCINTENCLR,
		  SSS_FCINTENCLR_BTDMAINTENCLR | SSS_FCINTENCLR_BRDMAINTENCLR);
	FUNC1(dev, FCFIFOCTRL, 0x00);

	err = FUNC6(dev, req);
	if (err)
		goto indata_error;

	err = FUNC7(dev, req);
	if (err)
		goto outdata_error;

	FUNC0(dev, AES_CONTROL, aes_control);
	FUNC3(dev, dev->ctx->aes_key, iv, ctr, dev->ctx->keylen);

	FUNC4(dev,  dev->sg_src);
	FUNC5(dev, dev->sg_dst);

	FUNC1(dev, FCINTENSET,
		  SSS_FCINTENSET_BTDMAINTENSET | SSS_FCINTENSET_BRDMAINTENSET);

	FUNC11(&dev->lock, flags);

	return;

outdata_error:
	FUNC9(dev);

indata_error:
	FUNC8(dev);
	dev->busy = false;
	FUNC11(&dev->lock, flags);
	FUNC2(req, err);
}
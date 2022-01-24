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
typedef  int u64 ;
typedef  int u32 ;
struct s5p_hash_reqctx {int engine; int digcnt; } ;
struct s5p_aes_dev {int /*<<< orphan*/  hash_req; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int SSS_HASH_BYTESWAP_DI ; 
 int SSS_HASH_BYTESWAP_DO ; 
 int SSS_HASH_BYTESWAP_IV ; 
 int SSS_HASH_BYTESWAP_KEY ; 
 int SSS_HASH_INIT_BIT ; 
 int SSS_HASH_USER_IV_EN ; 
 int /*<<< orphan*/  SSS_REG_HASH_CTRL ; 
 int /*<<< orphan*/  SSS_REG_HASH_CTRL_SWAP ; 
 int /*<<< orphan*/  SSS_REG_HASH_MSG_SIZE_HIGH ; 
 int /*<<< orphan*/  SSS_REG_HASH_MSG_SIZE_LOW ; 
 int /*<<< orphan*/  SSS_REG_HASH_PRE_MSG_SIZE_HIGH ; 
 int /*<<< orphan*/  SSS_REG_HASH_PRE_MSG_SIZE_LOW ; 
 struct s5p_hash_reqctx* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_aes_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_aes_dev*,struct s5p_hash_reqctx*) ; 

__attribute__((used)) static void FUNC5(struct s5p_aes_dev *dd, size_t length,
				bool final)
{
	struct s5p_hash_reqctx *ctx = FUNC1(dd->hash_req);
	u32 prelow, prehigh, low, high;
	u32 configflags, swapflags;
	u64 tmplen;

	configflags = ctx->engine | SSS_HASH_INIT_BIT;

	if (FUNC2(ctx->digcnt)) {
		FUNC4(dd, ctx);
		configflags |= SSS_HASH_USER_IV_EN;
	}

	if (final) {
		/* number of bytes for last part */
		low = length;
		high = 0;
		/* total number of bits prev hashed */
		tmplen = ctx->digcnt * 8;
		prelow = (u32)tmplen;
		prehigh = (u32)(tmplen >> 32);
	} else {
		prelow = 0;
		prehigh = 0;
		low = 0;
		high = FUNC0(31);
	}

	swapflags = SSS_HASH_BYTESWAP_DI | SSS_HASH_BYTESWAP_DO |
		    SSS_HASH_BYTESWAP_IV | SSS_HASH_BYTESWAP_KEY;

	FUNC3(dd, SSS_REG_HASH_MSG_SIZE_LOW, low);
	FUNC3(dd, SSS_REG_HASH_MSG_SIZE_HIGH, high);
	FUNC3(dd, SSS_REG_HASH_PRE_MSG_SIZE_LOW, prelow);
	FUNC3(dd, SSS_REG_HASH_PRE_MSG_SIZE_HIGH, prehigh);

	FUNC3(dd, SSS_REG_HASH_CTRL_SWAP, swapflags);
	FUNC3(dd, SSS_REG_HASH_CTRL, configflags);
}
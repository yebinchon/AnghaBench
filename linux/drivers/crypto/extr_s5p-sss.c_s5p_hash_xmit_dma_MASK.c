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
struct s5p_hash_reqctx {int error; size_t digcnt; size_t total; int /*<<< orphan*/  sg; int /*<<< orphan*/  sg_len; } ;
struct s5p_aes_dev {unsigned int hash_sg_cnt; int /*<<< orphan*/  hash_sg_iter; int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  hash_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int EINPROGRESS ; 
 int EINVAL ; 
 int /*<<< orphan*/  HASH_FLAGS_DMA_ACTIVE ; 
 int /*<<< orphan*/  HASH_FLAGS_FINAL ; 
 struct s5p_hash_reqctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct s5p_aes_dev*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct s5p_aes_dev *dd, size_t length,
			     bool final)
{
	struct s5p_hash_reqctx *ctx = FUNC0(dd->hash_req);
	unsigned int cnt;

	cnt = FUNC2(dd->dev, ctx->sg, ctx->sg_len, DMA_TO_DEVICE);
	if (!cnt) {
		FUNC1(dd->dev, "dma_map_sg error\n");
		ctx->error = true;
		return -EINVAL;
	}

	FUNC5(HASH_FLAGS_DMA_ACTIVE, &dd->hash_flags);
	dd->hash_sg_iter = ctx->sg;
	dd->hash_sg_cnt = cnt;
	FUNC3(dd, length, final);
	ctx->digcnt += length;
	ctx->total -= length;

	/* catch last interrupt */
	if (final)
		FUNC5(HASH_FLAGS_FINAL, &dd->hash_flags);

	FUNC4(dd, dd->hash_sg_iter); /* DMA starts */

	return -EINPROGRESS;
}
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
struct s5p_hash_reqctx {int /*<<< orphan*/  sg_len; int /*<<< orphan*/  sg; } ;
struct s5p_aes_dev {int /*<<< orphan*/  hash_flags; int /*<<< orphan*/  dev; int /*<<< orphan*/  hash_req; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  HASH_FLAGS_DMA_ACTIVE ; 
 struct s5p_hash_reqctx* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct s5p_aes_dev *dd)
{
	const struct s5p_hash_reqctx *ctx = FUNC0(dd->hash_req);

	FUNC2(dd->dev, ctx->sg, ctx->sg_len, DMA_TO_DEVICE);
	FUNC1(HASH_FLAGS_DMA_ACTIVE, &dd->hash_flags);
}
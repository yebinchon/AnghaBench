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
struct stm32_hash_request_ctx {int /*<<< orphan*/ * hw_context; } ;
struct stm32_hash_dev {int /*<<< orphan*/  dev; } ;
struct stm32_hash_ctx {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HASH_CR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int HASH_CSR_REGISTER_NUMBER ; 
 int /*<<< orphan*/  HASH_IMR ; 
 int /*<<< orphan*/  HASH_SR ; 
 int HASH_SR_BUSY ; 
 int /*<<< orphan*/  HASH_STR ; 
 struct stm32_hash_request_ctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct stm32_hash_ctx* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ahash_request*) ; 
 int /*<<< orphan*/ * FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,struct stm32_hash_request_ctx*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct stm32_hash_dev* FUNC10 (struct stm32_hash_ctx*) ; 
 int FUNC11 (struct stm32_hash_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct ahash_request *req, void *out)
{
	struct stm32_hash_request_ctx *rctx = FUNC1(req);
	struct stm32_hash_ctx *ctx = FUNC3(FUNC4(req));
	struct stm32_hash_dev *hdev = FUNC10(ctx);
	u32 *preg;
	unsigned int i;

	FUNC7(hdev->dev);

	while ((FUNC11(hdev, HASH_SR) & HASH_SR_BUSY))
		FUNC2();

	rctx->hw_context = FUNC5(3 + HASH_CSR_REGISTER_NUMBER,
					 sizeof(u32),
					 GFP_KERNEL);

	preg = rctx->hw_context;

	*preg++ = FUNC11(hdev, HASH_IMR);
	*preg++ = FUNC11(hdev, HASH_STR);
	*preg++ = FUNC11(hdev, HASH_CR);
	for (i = 0; i < HASH_CSR_REGISTER_NUMBER; i++)
		*preg++ = FUNC11(hdev, FUNC0(i));

	FUNC8(hdev->dev);
	FUNC9(hdev->dev);

	FUNC6(out, rctx, sizeof(*rctx));

	return 0;
}
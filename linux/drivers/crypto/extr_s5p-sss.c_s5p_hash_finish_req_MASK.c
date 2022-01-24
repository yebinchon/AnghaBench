#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct s5p_hash_reqctx {int error; TYPE_2__* sg; struct s5p_aes_dev* dd; } ;
struct s5p_aes_dev {int hash_flags; int /*<<< orphan*/  hash_lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* complete ) (TYPE_1__*,int) ;} ;
struct ahash_request {TYPE_1__ base; } ;
struct TYPE_5__ {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HASH_FLAGS_BUSY ; 
 int /*<<< orphan*/  HASH_FLAGS_DMA_READY ; 
 int /*<<< orphan*/  HASH_FLAGS_FINAL ; 
 int /*<<< orphan*/  HASH_FLAGS_OUTPUT_READY ; 
 int /*<<< orphan*/  HASH_FLAGS_SGS_ALLOCED ; 
 int /*<<< orphan*/  HASH_FLAGS_SGS_COPIED ; 
 struct s5p_hash_reqctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct ahash_request*) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC12(struct ahash_request *req, int err)
{
	struct s5p_hash_reqctx *ctx = FUNC1(req);
	struct s5p_aes_dev *dd = ctx->dd;
	unsigned long flags;

	if (FUNC11(HASH_FLAGS_SGS_COPIED, &dd->hash_flags))
		FUNC2((unsigned long)FUNC7(ctx->sg),
			   FUNC3(ctx->sg->length));

	if (FUNC11(HASH_FLAGS_SGS_ALLOCED, &dd->hash_flags))
		FUNC4(ctx->sg);

	ctx->sg = NULL;
	dd->hash_flags &= ~(FUNC0(HASH_FLAGS_SGS_ALLOCED) |
			    FUNC0(HASH_FLAGS_SGS_COPIED));

	if (!err && !ctx->error) {
		FUNC6(req);
		if (FUNC11(HASH_FLAGS_FINAL, &dd->hash_flags))
			FUNC5(req);
	} else {
		ctx->error = true;
	}

	FUNC8(&dd->hash_lock, flags);
	dd->hash_flags &= ~(FUNC0(HASH_FLAGS_BUSY) | FUNC0(HASH_FLAGS_FINAL) |
			    FUNC0(HASH_FLAGS_DMA_READY) |
			    FUNC0(HASH_FLAGS_OUTPUT_READY));
	FUNC9(&dd->hash_lock, flags);

	if (req->base.complete)
		req->base.complete(&req->base, err);
}
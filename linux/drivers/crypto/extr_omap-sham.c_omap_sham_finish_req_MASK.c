#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct omap_sham_reqctx {int flags; TYPE_3__* sg; scalar_t__ bufcnt; struct omap_sham_dev* dd; } ;
struct omap_sham_dev {int flags; int /*<<< orphan*/  dev; TYPE_1__* pdata; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* complete ) (TYPE_2__*,int) ;} ;
struct ahash_request {TYPE_2__ base; } ;
struct TYPE_7__ {scalar_t__ length; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* copy_hash ) (struct ahash_request*,int) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLAGS_BUSY ; 
 int /*<<< orphan*/  FLAGS_CPU ; 
 int /*<<< orphan*/  FLAGS_DMA_READY ; 
 int /*<<< orphan*/  FLAGS_ERROR ; 
 int /*<<< orphan*/  FLAGS_FINAL ; 
 int /*<<< orphan*/  FLAGS_OUTPUT_READY ; 
 int /*<<< orphan*/  FLAGS_SGS_ALLOCED ; 
 int /*<<< orphan*/  FLAGS_SGS_COPIED ; 
 struct omap_sham_reqctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (struct ahash_request*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void FUNC12(struct ahash_request *req, int err)
{
	struct omap_sham_reqctx *ctx = FUNC1(req);
	struct omap_sham_dev *dd = ctx->dd;

	if (FUNC11(FLAGS_SGS_COPIED, &dd->flags))
		FUNC2((unsigned long)FUNC8(ctx->sg),
			   FUNC3(ctx->sg->length + ctx->bufcnt));

	if (FUNC11(FLAGS_SGS_ALLOCED, &dd->flags))
		FUNC4(ctx->sg);

	ctx->sg = NULL;

	dd->flags &= ~(FUNC0(FLAGS_SGS_ALLOCED) | FUNC0(FLAGS_SGS_COPIED));

	if (!err) {
		dd->pdata->copy_hash(req, 1);
		if (FUNC11(FLAGS_FINAL, &dd->flags))
			err = FUNC5(req);
	} else {
		ctx->flags |= FUNC0(FLAGS_ERROR);
	}

	/* atomic operation is not needed here */
	dd->flags &= ~(FUNC0(FLAGS_BUSY) | FUNC0(FLAGS_FINAL) | FUNC0(FLAGS_CPU) |
			FUNC0(FLAGS_DMA_READY) | FUNC0(FLAGS_OUTPUT_READY));

	FUNC6(dd->dev);
	FUNC7(dd->dev);

	if (req->base.complete)
		req->base.complete(&req->base, err);
}
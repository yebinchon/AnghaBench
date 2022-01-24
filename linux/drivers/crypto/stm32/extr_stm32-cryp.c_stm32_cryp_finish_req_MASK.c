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
struct stm32_cryp {TYPE_1__* ctx; int /*<<< orphan*/  req; int /*<<< orphan*/  engine; int /*<<< orphan*/  areq; int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_blocksize; int /*<<< orphan*/  total_out_save; int /*<<< orphan*/  total_in_save; int /*<<< orphan*/  out_sg_save; int /*<<< orphan*/  out_sgl; int /*<<< orphan*/  in_sgl; scalar_t__ sgs_copied; } ;
struct TYPE_2__ {int /*<<< orphan*/  keylen; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int) ; 
 int FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct stm32_cryp*) ; 
 scalar_t__ FUNC6 (struct stm32_cryp*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct stm32_cryp*) ; 
 int FUNC13 (struct stm32_cryp*) ; 

__attribute__((used)) static void FUNC14(struct stm32_cryp *cryp, int err)
{
	if (!err && (FUNC6(cryp) || FUNC5(cryp)))
		/* Phase 4 : output tag */
		err = FUNC13(cryp);

	if (!err && (!(FUNC6(cryp) || FUNC5(cryp))))
		FUNC12(cryp);

	if (cryp->sgs_copied) {
		void *buf_in, *buf_out;
		int pages, len;

		buf_in = FUNC11(&cryp->in_sgl);
		buf_out = FUNC11(&cryp->out_sgl);

		FUNC10(buf_out, cryp->out_sg_save, 0,
			    cryp->total_out_save, 1);

		len = FUNC0(cryp->total_in_save, cryp->hw_blocksize);
		pages = len ? FUNC4(len) : 1;
		FUNC3((unsigned long)buf_in, pages);

		len = FUNC0(cryp->total_out_save, cryp->hw_blocksize);
		pages = len ? FUNC4(len) : 1;
		FUNC3((unsigned long)buf_out, pages);
	}

	FUNC8(cryp->dev);
	FUNC9(cryp->dev);

	if (FUNC6(cryp) || FUNC5(cryp))
		FUNC2(cryp->engine, cryp->areq, err);
	else
		FUNC1(cryp->engine, cryp->req,
						   err);

	FUNC7(cryp->ctx->key, 0, cryp->ctx->keylen);
}
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
struct stm32_cryp {int sgs_copied; int in_sg_len; int out_sg_len; int /*<<< orphan*/  out_sgl; int /*<<< orphan*/ * out_sg; int /*<<< orphan*/ * out_sg_save; int /*<<< orphan*/  in_sgl; int /*<<< orphan*/ * in_sg; int /*<<< orphan*/  total_in; int /*<<< orphan*/  dev; int /*<<< orphan*/  hw_blocksize; int /*<<< orphan*/  total_out; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EFAULT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct stm32_cryp*) ; 

__attribute__((used)) static int FUNC7(struct stm32_cryp *cryp)
{
	void *buf_in, *buf_out;
	int pages, total_in, total_out;

	if (!FUNC6(cryp)) {
		cryp->sgs_copied = 0;
		return 0;
	}

	total_in = FUNC0(cryp->total_in, cryp->hw_blocksize);
	pages = total_in ? FUNC3(total_in) : 1;
	buf_in = (void *)FUNC1(GFP_ATOMIC, pages);

	total_out = FUNC0(cryp->total_out, cryp->hw_blocksize);
	pages = total_out ? FUNC3(total_out) : 1;
	buf_out = (void *)FUNC1(GFP_ATOMIC, pages);

	if (!buf_in || !buf_out) {
		FUNC2(cryp->dev, "Can't allocate pages when unaligned\n");
		cryp->sgs_copied = 0;
		return -EFAULT;
	}

	FUNC4(buf_in, cryp->in_sg, 0, cryp->total_in, 0);

	FUNC5(&cryp->in_sgl, buf_in, total_in);
	cryp->in_sg = &cryp->in_sgl;
	cryp->in_sg_len = 1;

	FUNC5(&cryp->out_sgl, buf_out, total_out);
	cryp->out_sg_save = cryp->out_sg;
	cryp->out_sg = &cryp->out_sgl;
	cryp->out_sg_len = 1;

	cryp->sgs_copied = 1;

	return 0;
}
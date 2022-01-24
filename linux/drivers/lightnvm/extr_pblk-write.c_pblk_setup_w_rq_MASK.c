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
struct ppa_addr {int dummy; } ;
struct pblk_line_meta {int /*<<< orphan*/  lun_bitmap_len; } ;
struct pblk_line {int /*<<< orphan*/  left_eblks; } ;
struct pblk_c_ctx {unsigned int nr_valid; unsigned int nr_padded; unsigned long* lun_bitmap; int /*<<< orphan*/  sentry; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct nvm_rq {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*) ; 
 unsigned long* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 struct pblk_c_ctx* FUNC4 (struct nvm_rq*) ; 
 int FUNC5 (struct pblk*,struct nvm_rq*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pblk_end_io_write ; 
 struct pblk_line* FUNC6 (struct pblk*) ; 
 int FUNC7 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ,unsigned long*,unsigned int,struct ppa_addr*) ; 
 int FUNC8 (struct pblk*,struct nvm_rq*,int /*<<< orphan*/ ,unsigned long*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct pblk *pblk, struct nvm_rq *rqd,
			   struct ppa_addr *erase_ppa)
{
	struct pblk_line_meta *lm = &pblk->lm;
	struct pblk_line *e_line = FUNC6(pblk);
	struct pblk_c_ctx *c_ctx = FUNC4(rqd);
	unsigned int valid = c_ctx->nr_valid;
	unsigned int padded = c_ctx->nr_padded;
	unsigned int nr_secs = valid + padded;
	unsigned long *lun_bitmap;
	int ret;

	lun_bitmap = FUNC2(lm->lun_bitmap_len, GFP_KERNEL);
	if (!lun_bitmap)
		return -ENOMEM;
	c_ctx->lun_bitmap = lun_bitmap;

	ret = FUNC5(pblk, rqd, nr_secs, pblk_end_io_write);
	if (ret) {
		FUNC1(lun_bitmap);
		return ret;
	}

	if (FUNC3(!e_line || !FUNC0(&e_line->left_eblks)))
		ret = FUNC8(pblk, rqd, c_ctx->sentry, lun_bitmap,
							valid, 0);
	else
		ret = FUNC7(pblk, rqd, c_ctx->sentry, lun_bitmap,
							valid, erase_ppa);

	return ret;
}
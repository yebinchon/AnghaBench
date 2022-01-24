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
struct pblk_w_err_gc {int dummy; } ;
struct pblk_line_meta {int blk_bitmap_len; int /*<<< orphan*/  blk_per_line; } ;
struct pblk_line {void* blk_bitmap; void* erase_bitmap; void* chks; void* w_err_gc; } ;
struct pblk {struct pblk_line_meta lm; } ;
struct nvm_chk_meta {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct pblk *pblk, struct pblk_line *line)
{
	struct pblk_line_meta *lm = &pblk->lm;

	line->blk_bitmap = FUNC2(lm->blk_bitmap_len, GFP_KERNEL);
	if (!line->blk_bitmap)
		return -ENOMEM;

	line->erase_bitmap = FUNC2(lm->blk_bitmap_len, GFP_KERNEL);
	if (!line->erase_bitmap)
		goto free_blk_bitmap;


	line->chks = FUNC1(lm->blk_per_line,
				   sizeof(struct nvm_chk_meta), GFP_KERNEL);
	if (!line->chks)
		goto free_erase_bitmap;

	line->w_err_gc = FUNC2(sizeof(struct pblk_w_err_gc), GFP_KERNEL);
	if (!line->w_err_gc)
		goto free_chks;

	return 0;

free_chks:
	FUNC0(line->chks);
free_erase_bitmap:
	FUNC0(line->erase_bitmap);
free_blk_bitmap:
	FUNC0(line->blk_bitmap);
	return -ENOMEM;
}
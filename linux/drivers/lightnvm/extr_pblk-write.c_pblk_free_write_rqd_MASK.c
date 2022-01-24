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
struct pblk_c_ctx {scalar_t__ nr_padded; int /*<<< orphan*/  nr_valid; } ;
struct pblk {int dummy; } ;
struct nvm_rq {struct bio* bio; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 struct pblk_c_ctx* FUNC0 (struct nvm_rq*) ; 
 int /*<<< orphan*/  FUNC1 (struct pblk*,struct bio*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(struct pblk *pblk, struct nvm_rq *rqd)
{
	struct pblk_c_ctx *c_ctx = FUNC0(rqd);
	struct bio *bio = rqd->bio;

	if (c_ctx->nr_padded)
		FUNC1(pblk, bio, c_ctx->nr_valid,
							c_ctx->nr_padded);
}
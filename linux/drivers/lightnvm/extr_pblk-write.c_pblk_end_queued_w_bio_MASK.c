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
struct pblk_c_ctx {int /*<<< orphan*/  list; } ;
struct pblk {int dummy; } ;
struct nvm_rq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (struct pblk*,struct nvm_rq*,struct pblk_c_ctx*) ; 

__attribute__((used)) static unsigned long FUNC2(struct pblk *pblk,
					   struct nvm_rq *rqd,
					   struct pblk_c_ctx *c_ctx)
{
	FUNC0(&c_ctx->list);
	return FUNC1(pblk, rqd, c_ctx);
}
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
struct s5p_hash_reqctx {unsigned int nregs; scalar_t__ digest; struct s5p_aes_dev* dd; } ;
struct s5p_aes_dev {int dummy; } ;
struct ahash_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 struct s5p_hash_reqctx* FUNC1 (struct ahash_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct s5p_aes_dev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ahash_request *req)
{
	struct s5p_hash_reqctx *ctx = FUNC1(req);
	struct s5p_aes_dev *dd = ctx->dd;
	u32 *hash = (u32 *)ctx->digest;
	unsigned int i;

	for (i = 0; i < ctx->nregs; i++)
		hash[i] = FUNC2(dd, FUNC0(i));
}
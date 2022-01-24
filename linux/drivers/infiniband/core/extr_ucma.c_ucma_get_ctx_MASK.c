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
struct ucma_file {int dummy; } ;
struct ucma_context {int /*<<< orphan*/  ref; scalar_t__ closing; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIO ; 
 struct ucma_context* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ucma_context*) ; 
 struct ucma_context* FUNC2 (int,struct ucma_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctx_table ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ucma_context *FUNC6(struct ucma_file *file, int id)
{
	struct ucma_context *ctx;

	FUNC4(&ctx_table);
	ctx = FUNC2(id, file);
	if (!FUNC1(ctx)) {
		if (ctx->closing)
			ctx = FUNC0(-EIO);
		else
			FUNC3(&ctx->ref);
	}
	FUNC5(&ctx_table);
	return ctx;
}
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
struct r5l_recovery_ctx {int total_pages; int /*<<< orphan*/  ra_bio; int /*<<< orphan*/ * ra_pool; } ;
struct r5l_log {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct r5l_log *log,
					struct r5l_recovery_ctx *ctx)
{
	int i;

	for (i = 0; i < ctx->total_pages; ++i)
		FUNC1(ctx->ra_pool[i]);
	FUNC0(ctx->ra_bio);
}
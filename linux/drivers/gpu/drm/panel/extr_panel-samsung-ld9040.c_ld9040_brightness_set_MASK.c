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
struct ld9040 {size_t brightness; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MCS_GAMMA_CTRL ; 
 int /*<<< orphan*/  FUNC1 (struct ld9040*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ld9040*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * ld9040_gammas ; 

__attribute__((used)) static void FUNC3(struct ld9040 *ctx)
{
	FUNC1(ctx, ld9040_gammas[ctx->brightness],
			 FUNC0(ld9040_gammas[ctx->brightness]));

	FUNC2(ctx, MCS_GAMMA_CTRL, 0x02, 0x5a);
}
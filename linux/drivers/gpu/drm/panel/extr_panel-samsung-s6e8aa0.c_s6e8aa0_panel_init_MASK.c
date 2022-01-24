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
struct s6e8aa0 {int init_delay; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIPI_DCS_EXIT_SLEEP_MODE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC2 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC3 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC4 (struct s6e8aa0*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC6 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC7 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC8 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC9 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC10 (struct s6e8aa0*) ; 
 int /*<<< orphan*/  FUNC11 (struct s6e8aa0*) ; 

__attribute__((used)) static void FUNC12(struct s6e8aa0 *ctx)
{
	FUNC1(ctx);
	FUNC2(ctx);
	FUNC0(20);

	FUNC4(ctx, MIPI_DCS_EXIT_SLEEP_MODE);
	FUNC0(40);

	FUNC11(ctx);
	FUNC5(ctx);
	FUNC3(ctx);
	FUNC10(ctx);
	FUNC8(ctx);
	FUNC6(ctx);
	FUNC9(ctx);
	FUNC7(ctx);
	FUNC0(ctx->init_delay);
}
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
struct truly_nt35597 {int /*<<< orphan*/  panel; scalar_t__* dsi; } ;
struct mipi_dsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct truly_nt35597* FUNC3 (struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC4(struct mipi_dsi_device *dsi)
{
	struct truly_nt35597 *ctx = FUNC3(dsi);

	if (ctx->dsi[0])
		FUNC1(ctx->dsi[0]);
	if (ctx->dsi[1]) {
		FUNC1(ctx->dsi[1]);
		FUNC2(ctx->dsi[1]);
	}

	FUNC0(&ctx->panel);
	return 0;
}
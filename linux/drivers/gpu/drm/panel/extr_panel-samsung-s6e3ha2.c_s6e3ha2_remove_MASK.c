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
struct s6e3ha2 {int /*<<< orphan*/  bl_dev; int /*<<< orphan*/  panel; } ;
struct mipi_dsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mipi_dsi_device*) ; 
 struct s6e3ha2* FUNC3 (struct mipi_dsi_device*) ; 

__attribute__((used)) static int FUNC4(struct mipi_dsi_device *dsi)
{
	struct s6e3ha2 *ctx = FUNC3(dsi);

	FUNC2(dsi);
	FUNC1(&ctx->panel);
	FUNC0(ctx->bl_dev);

	return 0;
}
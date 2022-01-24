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
struct otm8009a {int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct mipi_dsi_device*,void const*,size_t) ; 
 struct mipi_dsi_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct otm8009a *ctx, const void *data,
				   size_t len)
{
	struct mipi_dsi_device *dsi = FUNC2(ctx->dev);

	if (FUNC1(dsi, data, len) < 0)
		FUNC0("mipi dsi dcs write buffer failed\n");
}
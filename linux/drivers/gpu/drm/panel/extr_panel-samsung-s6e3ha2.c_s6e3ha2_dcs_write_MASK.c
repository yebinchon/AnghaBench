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
struct s6e3ha2 {int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mipi_dsi_device*,void const*,size_t) ; 
 struct mipi_dsi_device* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct s6e3ha2 *ctx, const void *data, size_t len)
{
	struct mipi_dsi_device *dsi = FUNC1(ctx->dev);

	return FUNC0(dsi, data, len);
}
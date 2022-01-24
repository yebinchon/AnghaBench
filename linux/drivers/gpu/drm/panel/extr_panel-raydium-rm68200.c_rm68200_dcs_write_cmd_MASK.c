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
typedef  int /*<<< orphan*/  u8 ;
struct rm68200 {int /*<<< orphan*/  dev; } ;
struct mipi_dsi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct mipi_dsi_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 struct mipi_dsi_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct rm68200 *ctx, u8 cmd, u8 value)
{
	struct mipi_dsi_device *dsi = FUNC2(ctx->dev);
	int err;

	err = FUNC1(dsi, cmd, &value, 1);
	if (err < 0)
		FUNC0("MIPI DSI DCS write failed: %d\n", err);
}
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
typedef  int /*<<< orphan*/  u16 ;
struct tc358764 {int /*<<< orphan*/  dev; scalar_t__ error; } ;
struct mipi_dsi_device {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct mipi_dsi_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 struct mipi_dsi_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct tc358764 *ctx, u16 addr, u32 *val)
{
	struct mipi_dsi_device *dsi = FUNC4(ctx->dev);
	ssize_t ret;

	if (ctx->error)
		return;

	FUNC0(&addr);
	ret = FUNC3(dsi, &addr, sizeof(addr), val, sizeof(*val));
	if (ret >= 0)
		FUNC2(val);

	FUNC1(ctx->dev, "read: %d, addr: %d\n", addr, *val);
}
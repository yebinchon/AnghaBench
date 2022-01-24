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
 int /*<<< orphan*/  FUNC0 (struct mipi_dsi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC3 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC4 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC5 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC6 (struct s6e3ha2*) ; 
 int /*<<< orphan*/  FUNC7 (struct s6e3ha2*) ; 
 struct mipi_dsi_device* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct s6e3ha2 *ctx)
{
	struct mipi_dsi_device *dsi = FUNC8(ctx->dev);
	int ret;

	FUNC1(ret, FUNC0(dsi));
	FUNC9(5000, 6000);

	FUNC1(ret, FUNC6(ctx));
	FUNC1(ret, FUNC3(ctx));
	FUNC1(ret, FUNC7(ctx));
	FUNC1(ret, FUNC2(ctx));
	FUNC1(ret, FUNC5(ctx));
	FUNC1(ret, FUNC4(ctx));

	return 0;
}
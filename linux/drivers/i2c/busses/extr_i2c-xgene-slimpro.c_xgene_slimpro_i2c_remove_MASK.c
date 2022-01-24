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
struct slimpro_i2c_dev {int /*<<< orphan*/  mbox_chan; int /*<<< orphan*/  adapter; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ acpi_disabled ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct slimpro_i2c_dev* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct slimpro_i2c_dev *ctx = FUNC3(pdev);

	FUNC0(&ctx->adapter);

	if (acpi_disabled)
		FUNC1(ctx->mbox_chan);
	else
		FUNC2(ctx->mbox_chan);

	return 0;
}
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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct get_registers_context {int err; struct combiner* combiner; int /*<<< orphan*/ * dev; } ;
struct combiner {int dummy; } ;
typedef  int /*<<< orphan*/  acpi_status ;
typedef  int /*<<< orphan*/  acpi_handle ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  METHOD_NAME__CRS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct get_registers_context*) ; 
 int /*<<< orphan*/  get_registers_cb ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev, struct combiner *comb)
{
	acpi_handle ahandle = FUNC1(&pdev->dev);
	acpi_status status;
	struct get_registers_context ctx;

	if (!FUNC2(ahandle, METHOD_NAME__CRS))
		return -EINVAL;

	ctx.dev = &pdev->dev;
	ctx.combiner = comb;
	ctx.err = 0;

	status = FUNC3(ahandle, METHOD_NAME__CRS,
				     get_registers_cb, &ctx);
	if (FUNC0(status))
		return ctx.err;
	return 0;
}
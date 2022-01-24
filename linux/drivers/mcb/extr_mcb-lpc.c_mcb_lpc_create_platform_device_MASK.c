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
struct resource {int dummy; } ;
struct dmi_system_id {struct resource* driver_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  mcb_lpc_pdev ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct resource*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const struct dmi_system_id *id)
{
	struct resource *res = id->driver_data;
	int ret;

	mcb_lpc_pdev = FUNC2("mcb-lpc", -1);
	if (!mcb_lpc_pdev)
		return -ENOMEM;

	ret = FUNC1(mcb_lpc_pdev, res, 1);
	if (ret)
		goto out_put;

	ret = FUNC0(mcb_lpc_pdev);
	if (ret)
		goto out_put;

	return 0;

out_put:
	FUNC3(mcb_lpc_pdev);
	return ret;
}
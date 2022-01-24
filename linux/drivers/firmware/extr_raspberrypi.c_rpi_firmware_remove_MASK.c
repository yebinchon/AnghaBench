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
struct rpi_firmware {int /*<<< orphan*/  chan; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct rpi_firmware* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/ * rpi_clk ; 
 int /*<<< orphan*/ * rpi_hwmon ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct rpi_firmware *fw = FUNC2(pdev);

	FUNC1(rpi_hwmon);
	rpi_hwmon = NULL;
	FUNC1(rpi_clk);
	rpi_clk = NULL;
	FUNC0(fw->chan);

	return 0;
}
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
struct tilcdc_module {int dummy; } ;
struct tfp410_module {int /*<<< orphan*/  gpio; int /*<<< orphan*/  i2c; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct tilcdc_module* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct tilcdc_module*) ; 
 struct tfp410_module* FUNC4 (struct tilcdc_module*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct tilcdc_module *mod = FUNC0(&pdev->dev);
	struct tfp410_module *tfp410_mod = FUNC4(mod);

	FUNC2(tfp410_mod->i2c);
	FUNC1(tfp410_mod->gpio);

	FUNC3(mod);

	return 0;
}
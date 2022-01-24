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
struct mc13xxx_buttons_platform_data {int b3on_flags; int b2on_flags; int b1on_flags; } ;
struct mc13783_pwrb {int /*<<< orphan*/  pwr; int /*<<< orphan*/  mc13783; } ;

/* Variables and functions */
 int MC13783_BUTTON_ENABLE ; 
 int /*<<< orphan*/  MC13783_IRQ_ONOFD1 ; 
 int /*<<< orphan*/  MC13783_IRQ_ONOFD2 ; 
 int /*<<< orphan*/  MC13783_IRQ_ONOFD3 ; 
 struct mc13xxx_buttons_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mc13783_pwrb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mc13783_pwrb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct mc13783_pwrb* FUNC6 (struct platform_device*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct mc13783_pwrb *priv = FUNC6(pdev);
	const struct mc13xxx_buttons_platform_data *pdata;

	pdata = FUNC0(&pdev->dev);

	FUNC4(priv->mc13783);

	if (pdata->b3on_flags & MC13783_BUTTON_ENABLE)
		FUNC3(priv->mc13783, MC13783_IRQ_ONOFD3, priv);
	if (pdata->b2on_flags & MC13783_BUTTON_ENABLE)
		FUNC3(priv->mc13783, MC13783_IRQ_ONOFD2, priv);
	if (pdata->b1on_flags & MC13783_BUTTON_ENABLE)
		FUNC3(priv->mc13783, MC13783_IRQ_ONOFD1, priv);

	FUNC5(priv->mc13783);

	FUNC1(priv->pwr);
	FUNC2(priv);

	return 0;
}
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
struct sh_keysc_priv {int /*<<< orphan*/  iomem_base; int /*<<< orphan*/  input; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KYCR2 ; 
 int /*<<< orphan*/  KYCR2_IRQ_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sh_keysc_priv*) ; 
 struct sh_keysc_priv* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sh_keysc_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct sh_keysc_priv *priv = FUNC4(pdev);

	FUNC8(priv, KYCR2, KYCR2_IRQ_DISABLED);

	FUNC1(priv->input);
	FUNC0(FUNC5(pdev, 0), pdev);
	FUNC2(priv->iomem_base);

	FUNC7(&pdev->dev);
	FUNC6(&pdev->dev);

	FUNC3(priv);

	return 0;
}
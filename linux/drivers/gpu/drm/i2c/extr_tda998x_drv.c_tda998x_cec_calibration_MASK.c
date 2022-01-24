#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tda998x_priv {int /*<<< orphan*/  edid_mutex; TYPE_1__* hdmi; struct gpio_desc* calib; } ;
struct gpio_desc {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_desc*) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gpio_desc*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct tda998x_priv*,int) ; 

__attribute__((used)) static void FUNC11(struct tda998x_priv *priv)
{
	struct gpio_desc *calib = priv->calib;

	FUNC8(&priv->edid_mutex);
	if (priv->hdmi->irq > 0)
		FUNC0(priv->hdmi->irq);
	FUNC3(calib, 1);
	FUNC10(priv, true);

	FUNC5();
	FUNC4(calib, 0);
	FUNC7(10);
	FUNC4(calib, 1);
	FUNC6();

	FUNC10(priv, false);
	FUNC2(calib);
	if (priv->hdmi->irq > 0)
		FUNC1(priv->hdmi->irq);
	FUNC9(&priv->edid_mutex);
}
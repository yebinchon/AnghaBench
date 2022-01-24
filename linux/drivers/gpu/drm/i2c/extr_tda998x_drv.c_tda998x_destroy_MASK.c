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
struct tda998x_priv {scalar_t__ cec_notify; int /*<<< orphan*/  cec; int /*<<< orphan*/  detect_work; int /*<<< orphan*/  edid_delay_timer; TYPE_1__* hdmi; scalar_t__ audio_pdev; int /*<<< orphan*/  bridge; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  INT_FLAGS_2_EDID_BLK_RD ; 
 int /*<<< orphan*/  REG_CEC_RXSHPDINTENA ; 
 int /*<<< orphan*/  REG_INT_FLAGS_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct tda998x_priv* FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct tda998x_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct tda998x_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct device *dev)
{
	struct tda998x_priv *priv = FUNC4(dev);

	FUNC5(&priv->bridge);

	/* disable all IRQs and free the IRQ handler */
	FUNC2(priv, REG_CEC_RXSHPDINTENA, 0);
	FUNC9(priv, REG_INT_FLAGS_2, INT_FLAGS_2_EDID_BLK_RD);

	if (priv->audio_pdev)
		FUNC8(priv->audio_pdev);

	if (priv->hdmi->irq)
		FUNC6(priv->hdmi->irq, priv);

	FUNC3(&priv->edid_delay_timer);
	FUNC0(&priv->detect_work);

	FUNC7(priv->cec);

	if (priv->cec_notify)
		FUNC1(priv->cec_notify);
}
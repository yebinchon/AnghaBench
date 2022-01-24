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
struct mc13783_ts_priv {int /*<<< orphan*/  work; int /*<<< orphan*/  mc13xxx; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC13XXX_ADC0 ; 
 int /*<<< orphan*/  MC13XXX_ADC0_TSMOD_MASK ; 
 int /*<<< orphan*/  MC13XXX_IRQ_TS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mc13783_ts_priv* FUNC1 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mc13783_ts_priv*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct input_dev *dev)
{
	struct mc13783_ts_priv *priv = FUNC1(dev);

	FUNC3(priv->mc13xxx);
	FUNC4(priv->mc13xxx, MC13XXX_ADC0,
			MC13XXX_ADC0_TSMOD_MASK, 0);
	FUNC2(priv->mc13xxx, MC13XXX_IRQ_TS, priv);
	FUNC5(priv->mc13xxx);

	FUNC0(&priv->work);
}
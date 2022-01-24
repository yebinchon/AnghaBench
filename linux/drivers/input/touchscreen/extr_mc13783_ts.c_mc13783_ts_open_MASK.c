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
struct mc13783_ts_priv {int /*<<< orphan*/  mc13xxx; } ;
struct input_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC13783_TS_NAME ; 
 int /*<<< orphan*/  MC13XXX_ADC0 ; 
 int /*<<< orphan*/  MC13XXX_ADC0_TSMOD0 ; 
 int /*<<< orphan*/  MC13XXX_ADC0_TSMOD_MASK ; 
 int /*<<< orphan*/  MC13XXX_IRQ_TS ; 
 struct mc13783_ts_priv* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  mc13783_ts_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mc13783_ts_priv*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mc13783_ts_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct input_dev *dev)
{
	struct mc13783_ts_priv *priv = FUNC0(dev);
	int ret;

	FUNC4(priv->mc13xxx);

	FUNC1(priv->mc13xxx, MC13XXX_IRQ_TS);

	ret = FUNC3(priv->mc13xxx, MC13XXX_IRQ_TS,
		mc13783_ts_handler, MC13783_TS_NAME, priv);
	if (ret)
		goto out;

	ret = FUNC5(priv->mc13xxx, MC13XXX_ADC0,
			MC13XXX_ADC0_TSMOD_MASK, MC13XXX_ADC0_TSMOD0);
	if (ret)
		FUNC2(priv->mc13xxx, MC13XXX_IRQ_TS, priv);
out:
	FUNC6(priv->mc13xxx);
	return ret;
}
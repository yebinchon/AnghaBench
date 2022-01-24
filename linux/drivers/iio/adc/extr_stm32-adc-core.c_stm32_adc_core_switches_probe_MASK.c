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
struct stm32_adc_priv {int vdd_uv; int /*<<< orphan*/ * vdd; TYPE_1__* cfg; int /*<<< orphan*/ * booster; int /*<<< orphan*/ * syscfg; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {int has_syscfg; } ;

/* Variables and functions */
 int ENODEV ; 
 int EPROBE_DEFER ; 
 int HAS_ANASWVDD ; 
 int HAS_VBOOSTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 void* FUNC3 (struct device*,char*) ; 
 scalar_t__ FUNC4 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (struct device_node*,char*) ; 

__attribute__((used)) static int FUNC9(struct device *dev,
					 struct stm32_adc_priv *priv)
{
	struct device_node *np = dev->of_node;
	int ret;

	/* Analog switches supply can be controlled by syscfg (optional) */
	priv->syscfg = FUNC8(np, "st,syscfg");
	if (FUNC0(priv->syscfg)) {
		ret = FUNC1(priv->syscfg);
		if (ret != -ENODEV) {
			if (ret != -EPROBE_DEFER)
				FUNC2(dev, "Can't probe syscfg: %d\n", ret);
			return ret;
		}
		priv->syscfg = NULL;
	}

	/* Booster can be used to supply analog switches (optional) */
	if (priv->cfg->has_syscfg & HAS_VBOOSTER &&
	    FUNC4(np, "booster-supply")) {
		priv->booster = FUNC3(dev, "booster");
		if (FUNC0(priv->booster)) {
			ret = FUNC1(priv->booster);
			if (ret != -ENODEV) {
				if (ret != -EPROBE_DEFER)
					FUNC2(dev, "can't get booster %d\n",
						ret);
				return ret;
			}
			priv->booster = NULL;
		}
	}

	/* Vdd can be used to supply analog switches (optional) */
	if (priv->cfg->has_syscfg & HAS_ANASWVDD &&
	    FUNC4(np, "vdd-supply")) {
		priv->vdd = FUNC3(dev, "vdd");
		if (FUNC0(priv->vdd)) {
			ret = FUNC1(priv->vdd);
			if (ret != -ENODEV) {
				if (ret != -EPROBE_DEFER)
					FUNC2(dev, "can't get vdd %d\n", ret);
				return ret;
			}
			priv->vdd = NULL;
		}
	}

	if (priv->vdd) {
		ret = FUNC6(priv->vdd);
		if (ret < 0) {
			FUNC2(dev, "vdd enable failed %d\n", ret);
			return ret;
		}

		ret = FUNC7(priv->vdd);
		if (ret < 0) {
			FUNC2(dev, "vdd get voltage failed %d\n", ret);
			FUNC5(priv->vdd);
			return ret;
		}
		priv->vdd_uv = ret;

		FUNC5(priv->vdd);
	}

	return 0;
}
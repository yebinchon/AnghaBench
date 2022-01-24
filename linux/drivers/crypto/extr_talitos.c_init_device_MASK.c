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
struct talitos_private {int num_channels; int features; scalar_t__ reg_mdeu; scalar_t__ reg; scalar_t__ reg_deu; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TALITOS1_DEUICR_KPE ; 
 int /*<<< orphan*/  TALITOS1_IMR_INIT ; 
 int /*<<< orphan*/  TALITOS1_IMR_LO_INIT ; 
 int /*<<< orphan*/  TALITOS2_IMR_INIT ; 
 int /*<<< orphan*/  TALITOS2_IMR_LO_INIT ; 
 scalar_t__ TALITOS_EUICR ; 
 scalar_t__ TALITOS_EUICR_LO ; 
 int TALITOS_FTR_HW_AUTH_CHECK ; 
 scalar_t__ TALITOS_IMR ; 
 scalar_t__ TALITOS_IMR_LO ; 
 int /*<<< orphan*/  TALITOS_MDEUICR_LO_ICE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 struct talitos_private* FUNC1 (struct device*) ; 
 int FUNC2 (struct talitos_private*) ; 
 int FUNC3 (struct device*,int) ; 
 int FUNC4 (struct device*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct device *dev)
{
	struct talitos_private *priv = FUNC1(dev);
	int ch, err;
	bool is_sec1 = FUNC2(priv);

	/*
	 * Master reset
	 * errata documentation: warning: certain SEC interrupts
	 * are not fully cleared by writing the MCR:SWR bit,
	 * set bit twice to completely reset
	 */
	err = FUNC4(dev);
	if (err)
		return err;

	err = FUNC4(dev);
	if (err)
		return err;

	/* reset channels */
	for (ch = 0; ch < priv->num_channels; ch++) {
		err = FUNC3(dev, ch);
		if (err)
			return err;
	}

	/* enable channel done and error interrupts */
	if (is_sec1) {
		FUNC0(priv->reg + TALITOS_IMR, TALITOS1_IMR_INIT);
		FUNC0(priv->reg + TALITOS_IMR_LO, TALITOS1_IMR_LO_INIT);
		/* disable parity error check in DEU (erroneous? test vect.) */
		FUNC5(priv->reg_deu + TALITOS_EUICR, TALITOS1_DEUICR_KPE);
	} else {
		FUNC5(priv->reg + TALITOS_IMR, TALITOS2_IMR_INIT);
		FUNC5(priv->reg + TALITOS_IMR_LO, TALITOS2_IMR_LO_INIT);
	}

	/* disable integrity check error interrupts (use writeback instead) */
	if (priv->features & TALITOS_FTR_HW_AUTH_CHECK)
		FUNC5(priv->reg_mdeu + TALITOS_EUICR_LO,
		          TALITOS_MDEUICR_LO_ICE);

	return 0;
}
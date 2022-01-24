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
struct talitos_private {scalar_t__ reg_rngu; } ;
struct hwrng {scalar_t__ priv; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ TALITOS_EUDSR_LO ; 
 scalar_t__ TALITOS_EURCR_LO ; 
 scalar_t__ TALITOS_EUSR_LO ; 
 int /*<<< orphan*/  TALITOS_RNGURCR_LO_SR ; 
 int TALITOS_RNGUSR_LO_RD ; 
 unsigned int TALITOS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct talitos_private* FUNC2 (struct device*) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct hwrng *rng)
{
	struct device *dev = (struct device *)rng->priv;
	struct talitos_private *priv = FUNC2(dev);
	unsigned int timeout = TALITOS_TIMEOUT;

	FUNC4(priv->reg_rngu + TALITOS_EURCR_LO, TALITOS_RNGURCR_LO_SR);
	while (!(FUNC3(priv->reg_rngu + TALITOS_EUSR_LO)
		 & TALITOS_RNGUSR_LO_RD)
	       && --timeout)
		FUNC0();
	if (timeout == 0) {
		FUNC1(dev, "failed to reset rng hw\n");
		return -ENODEV;
	}

	/* start generating */
	FUNC4(priv->reg_rngu + TALITOS_EUDSR_LO, 0);

	return 0;
}
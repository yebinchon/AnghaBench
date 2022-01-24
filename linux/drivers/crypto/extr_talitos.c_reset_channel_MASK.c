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
struct talitos_private {int features; TYPE_1__* chan; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ reg; } ;

/* Variables and functions */
 int EIO ; 
 int TALITOS1_CCCR_LO_RESET ; 
 int TALITOS2_CCCR_RESET ; 
 scalar_t__ TALITOS_CCCR ; 
 scalar_t__ TALITOS_CCCR_LO ; 
 int TALITOS_CCCR_LO_CDIE ; 
 int TALITOS_CCCR_LO_CDWE ; 
 int TALITOS_CCCR_LO_EAE ; 
 int TALITOS_CCCR_LO_IWSE ; 
 int TALITOS_CCCR_LO_NE ; 
 int TALITOS_FTR_HW_AUTH_CHECK ; 
 unsigned int TALITOS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 struct talitos_private* FUNC2 (struct device*) ; 
 int FUNC3 (struct talitos_private*) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct device *dev, int ch)
{
	struct talitos_private *priv = FUNC2(dev);
	unsigned int timeout = TALITOS_TIMEOUT;
	bool is_sec1 = FUNC3(priv);

	if (is_sec1) {
		FUNC5(priv->chan[ch].reg + TALITOS_CCCR_LO,
			  TALITOS1_CCCR_LO_RESET);

		while ((FUNC4(priv->chan[ch].reg + TALITOS_CCCR_LO) &
			TALITOS1_CCCR_LO_RESET) && --timeout)
			FUNC0();
	} else {
		FUNC5(priv->chan[ch].reg + TALITOS_CCCR,
			  TALITOS2_CCCR_RESET);

		while ((FUNC4(priv->chan[ch].reg + TALITOS_CCCR) &
			TALITOS2_CCCR_RESET) && --timeout)
			FUNC0();
	}

	if (timeout == 0) {
		FUNC1(dev, "failed to reset channel %d\n", ch);
		return -EIO;
	}

	/* set 36-bit addressing, done writeback enable and done IRQ enable */
	FUNC5(priv->chan[ch].reg + TALITOS_CCCR_LO, TALITOS_CCCR_LO_EAE |
		  TALITOS_CCCR_LO_CDWE | TALITOS_CCCR_LO_CDIE);
	/* enable chaining descriptors */
	if (is_sec1)
		FUNC5(priv->chan[ch].reg + TALITOS_CCCR_LO,
			  TALITOS_CCCR_LO_NE);

	/* and ICCR writeback, if available */
	if (priv->features & TALITOS_FTR_HW_AUTH_CHECK)
		FUNC5(priv->chan[ch].reg + TALITOS_CCCR_LO,
		          TALITOS_CCCR_LO_IWSE);

	return 0;
}
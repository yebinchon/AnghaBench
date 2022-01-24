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
struct drm_psb_private {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 unsigned long HZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSB_CR_2D_BLIT_STATUS ; 
 int /*<<< orphan*/  PSB_CR_2D_SOCIF ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int _PSB_C2B_STATUS_BUSY ; 
 int _PSB_C2_SOCIF_EMPTY ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long) ; 

int FUNC3(struct drm_psb_private *dev_priv)
{
	unsigned long stop = jiffies + HZ;
	int busy = 1;

	/* NOP for Cedarview */
	if (FUNC0(dev_priv->dev))
		return 0;

	/* First do a quick check */
	if ((FUNC1(PSB_CR_2D_SOCIF) == _PSB_C2_SOCIF_EMPTY) &&
	    ((FUNC1(PSB_CR_2D_BLIT_STATUS) & _PSB_C2B_STATUS_BUSY) == 0))
		return 0;

	do {
		busy = (FUNC1(PSB_CR_2D_SOCIF) != _PSB_C2_SOCIF_EMPTY);
	} while (busy && !FUNC2(jiffies, stop));

	if (busy)
		return -EBUSY;

	do {
		busy = ((FUNC1(PSB_CR_2D_BLIT_STATUS) &
			_PSB_C2B_STATUS_BUSY) != 0);
	} while (busy && !FUNC2(jiffies, stop));

	/* If still busy, we probably have a hang */
	return (busy) ? -EBUSY : 0;
}
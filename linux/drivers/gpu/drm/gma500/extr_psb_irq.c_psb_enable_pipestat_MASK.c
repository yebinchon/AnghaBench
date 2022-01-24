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
typedef  int u32 ;
struct drm_psb_private {int* pipestat; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int) ; 

void
FUNC5(struct drm_psb_private *dev_priv, int pipe, u32 mask)
{
	if ((dev_priv->pipestat[pipe] & mask) != mask) {
		u32 reg = FUNC4(pipe);
		dev_priv->pipestat[pipe] |= mask;
		/* Enable the interrupt, clear any pending status */
		if (FUNC2(dev_priv->dev, false)) {
			u32 writeVal = FUNC0(reg);
			writeVal |= (mask | (mask >> 16));
			FUNC1(writeVal, reg);
			(void) FUNC0(reg);
			FUNC3(dev_priv->dev);
		}
	}
}
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
typedef  int /*<<< orphan*/  drm_via_private_t ;

/* Variables and functions */
 int VIA_2D_ENG_BUSY ; 
 int VIA_3D_ENG_BUSY ; 
 int VIA_CMD_RGTR_BUSY ; 
 int /*<<< orphan*/  VIA_REG_STATUS ; 
 int VIA_VR_QUEUE_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(drm_via_private_t *dev_priv)
{
	int count = 10000000;

	while (!(FUNC0(dev_priv, VIA_REG_STATUS) & VIA_VR_QUEUE_BUSY) && --count)
		;

	while (count && (FUNC0(dev_priv, VIA_REG_STATUS) &
			   (VIA_CMD_RGTR_BUSY | VIA_2D_ENG_BUSY |
			    VIA_3D_ENG_BUSY)))
		--count;
	return count;
}
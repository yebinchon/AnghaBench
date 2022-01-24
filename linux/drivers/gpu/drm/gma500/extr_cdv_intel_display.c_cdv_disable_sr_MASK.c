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
struct drm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_BLC_SELF ; 
 int FW_BLC_SELF_EN ; 
 int /*<<< orphan*/  OV_OVADD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*) ; 

void FUNC3(struct drm_device *dev)
{
	if (FUNC0(FW_BLC_SELF) & FW_BLC_SELF_EN) {

		/* Disable self-refresh before adjust WM */
		FUNC1(FW_BLC_SELF, (FUNC0(FW_BLC_SELF) & ~FW_BLC_SELF_EN));
		FUNC0(FW_BLC_SELF);

		FUNC2(dev);

		/* Cedarview workaround to write ovelay plane, which force to leave
		 * MAX_FIFO state.
		 */
		FUNC1(OV_OVADD, 0/*dev_priv->ovl_offset*/);
		FUNC0(OV_OVADD);

		FUNC2(dev);
	}

}
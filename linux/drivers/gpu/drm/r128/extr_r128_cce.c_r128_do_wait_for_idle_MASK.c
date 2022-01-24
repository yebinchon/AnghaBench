#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int usec_timeout; } ;
typedef  TYPE_1__ drm_r128_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int R128_GUI_ACTIVE ; 
 int /*<<< orphan*/  R128_GUI_STAT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(drm_r128_private_t *dev_priv)
{
	int i, ret;

	ret = FUNC3(dev_priv, 64);
	if (ret)
		return ret;

	for (i = 0; i < dev_priv->usec_timeout; i++) {
		if (!(FUNC1(R128_GUI_STAT) & R128_GUI_ACTIVE)) {
			FUNC2(dev_priv);
			return 0;
		}
		FUNC4(1);
	}

#if R128_FIFO_DEBUG
	DRM_ERROR("failed!\n");
#endif
	return -EBUSY;
}
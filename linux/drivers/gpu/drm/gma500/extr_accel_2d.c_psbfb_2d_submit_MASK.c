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
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_psb_private {int /*<<< orphan*/  lock_2d; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ PSB_SGX_2D_SLAVE_PORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC2 (struct drm_psb_private*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct drm_psb_private *dev_priv, uint32_t *cmdbuf,
								unsigned size)
{
	int ret = 0;
	int i;
	unsigned submit_size;
	unsigned long flags;

	FUNC3(&dev_priv->lock_2d, flags);
	while (size > 0) {
		submit_size = (size < 0x60) ? size : 0x60;
		size -= submit_size;
		ret = FUNC2(dev_priv, submit_size);
		if (ret)
			break;

		submit_size <<= 2;

		for (i = 0; i < submit_size; i += 4)
			FUNC1(*cmdbuf++, PSB_SGX_2D_SLAVE_PORT + i);

		(void)FUNC0(PSB_SGX_2D_SLAVE_PORT + i - 4);
	}
	FUNC4(&dev_priv->lock_2d, flags);
	return ret;
}
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
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  last_fence_retired; int /*<<< orphan*/  fence_queue; } ;
typedef  TYPE_1__ drm_mga_private_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC3(struct drm_device *dev, unsigned int *sequence)
{
	drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;
	unsigned int cur_fence;

	/* Assume that the user has missed the current sequence number
	 * by about a day rather than she wants to wait for years
	 * using fences.
	 */
	FUNC2(dev_priv->fence_queue,
		    (((cur_fence = FUNC0(&dev_priv->last_fence_retired))
		      - *sequence) <= (1 << 23)),
		    FUNC1(3000));

	*sequence = cur_fence;
}
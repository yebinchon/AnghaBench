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
struct drm_atomic_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_atomic_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_device*,struct drm_atomic_state*) ; 

void FUNC3(struct drm_device *dev,
					       struct drm_atomic_state *old_state)
{
	FUNC1(dev, old_state);

	FUNC2(dev, old_state);

	FUNC0(dev, old_state);
}
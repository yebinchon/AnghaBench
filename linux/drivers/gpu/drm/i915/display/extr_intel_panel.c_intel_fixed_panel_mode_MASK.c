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
struct drm_display_mode {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct drm_display_mode*,struct drm_display_mode const*) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_display_mode*,int /*<<< orphan*/ ) ; 

void
FUNC2(const struct drm_display_mode *fixed_mode,
		       struct drm_display_mode *adjusted_mode)
{
	FUNC0(adjusted_mode, fixed_mode);

	FUNC1(adjusted_mode, 0);
}
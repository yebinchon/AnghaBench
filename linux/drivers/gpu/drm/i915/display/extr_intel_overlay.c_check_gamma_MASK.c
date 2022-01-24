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
struct drm_intel_overlay_attrs {int gamma0; int gamma1; int gamma2; int gamma3; int gamma4; int gamma5; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(struct drm_intel_overlay_attrs *attrs)
{
	if (!FUNC1(0, attrs->gamma0) ||
	    !FUNC1(attrs->gamma0, attrs->gamma1) ||
	    !FUNC1(attrs->gamma1, attrs->gamma2) ||
	    !FUNC1(attrs->gamma2, attrs->gamma3) ||
	    !FUNC1(attrs->gamma3, attrs->gamma4) ||
	    !FUNC1(attrs->gamma4, attrs->gamma5) ||
	    !FUNC1(attrs->gamma5, 0x00ffffff))
		return -EINVAL;

	if (!FUNC0(attrs->gamma5))
		return -EINVAL;

	return 0;
}
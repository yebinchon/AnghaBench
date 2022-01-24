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
struct drm_property_blob {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int EINVAL ; 
 int FUNC1 (struct drm_property_blob const*) ; 

__attribute__((used)) static int FUNC2(const struct drm_property_blob *lut, int expected)
{
	int len;

	if (!lut)
		return 0;

	len = FUNC1(lut);
	if (len != expected) {
		FUNC0("Invalid LUT size; got %d, expected %d\n",
			      len, expected);
		return -EINVAL;
	}

	return 0;
}
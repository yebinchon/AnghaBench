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
struct drm_mm {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct drm_mm*,unsigned int const,unsigned int const) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_mm*) ; 
 int /*<<< orphan*/  FUNC2 (struct drm_mm*,unsigned int const,unsigned int const,unsigned int const) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct drm_mm mm;
	const unsigned int start = 1024;
	const unsigned int end = 2048;
	const unsigned int size = end - start;

	FUNC0(&mm, start, size);

	if (!FUNC2(&mm, 1, 0, start))
		return -EINVAL;

	if (!FUNC2(&mm, size,
					 start - size/2, start + (size+1)/2))
		return -EINVAL;

	if (!FUNC2(&mm, size,
					 end - (size+1)/2, end + size/2))
		return -EINVAL;

	if (!FUNC2(&mm, 1, end, end + size))
		return -EINVAL;

	FUNC1(&mm);
	return 0;
}
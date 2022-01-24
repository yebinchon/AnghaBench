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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (unsigned long const*,unsigned int) ; 
 scalar_t__ FUNC2 (unsigned long const*,unsigned long const*,unsigned int) ; 
 scalar_t__ FUNC3 (unsigned long const*,unsigned long const*,unsigned int) ; 

__attribute__((used)) static const unsigned long *FUNC4(const unsigned long *av_masks,
					  unsigned int masklength,
					  const unsigned long *mask,
					  bool strict)
{
	if (FUNC1(mask, masklength))
		return NULL;
	while (*av_masks) {
		if (strict) {
			if (FUNC2(mask, av_masks, masklength))
				return av_masks;
		} else {
			if (FUNC3(mask, av_masks, masklength))
				return av_masks;
		}
		av_masks += FUNC0(masklength);
	}
	return NULL;
}
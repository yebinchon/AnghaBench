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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int,unsigned int,unsigned int,int,unsigned int,int) ; 

__attribute__((used)) static inline bool FUNC1(unsigned int src, unsigned int dst,
				       unsigned int min, unsigned int max)
{
	if ((max && (dst << 16) > src * max) ||
	    (min && (dst << 16) < src * min)) {
		FUNC0("Scale from %d to %d exceeds HW limits (ratio min %d.%05d, max %d.%05d)\n",
			 src, dst,
			 min >> 16, 100000 * (min & 0xffff) / (1 << 16),
			 max >> 16, 100000 * (max & 0xffff) / (1 << 16));
		return false;
	}
	return true;
}
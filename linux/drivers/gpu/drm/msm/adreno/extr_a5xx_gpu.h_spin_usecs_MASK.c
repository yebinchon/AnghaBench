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
typedef  int uint32_t ;
struct msm_gpu {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct msm_gpu*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline int FUNC3(struct msm_gpu *gpu, uint32_t usecs,
		uint32_t reg, uint32_t mask, uint32_t value)
{
	while (usecs--) {
		FUNC2(1);
		if ((FUNC1(gpu, reg) & mask) == value)
			return 0;
		FUNC0();
	}

	return -ETIMEDOUT;
}
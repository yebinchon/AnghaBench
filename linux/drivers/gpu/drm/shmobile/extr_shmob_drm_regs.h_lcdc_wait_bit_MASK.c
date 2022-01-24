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
typedef  int u32 ;
struct shmob_drm_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned long jiffies ; 
 int FUNC1 (struct shmob_drm_device*,int) ; 
 unsigned long FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static inline int FUNC4(struct shmob_drm_device *sdev, u32 reg,
				u32 mask, u32 until)
{
	unsigned long timeout = jiffies + FUNC2(5);

	while ((FUNC1(sdev, reg) & mask) != until) {
		if (FUNC3(jiffies, timeout))
			return -ETIMEDOUT;
		FUNC0();
	}

	return 0;
}
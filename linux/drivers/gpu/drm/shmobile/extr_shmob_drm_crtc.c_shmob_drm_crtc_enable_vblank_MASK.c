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
struct shmob_drm_device {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LDINTR ; 
 int LDINTR_STATUS_MASK ; 
 int LDINTR_VEE ; 
 int FUNC0 (struct shmob_drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct shmob_drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct shmob_drm_device *sdev,
					 bool enable)
{
	unsigned long flags;
	u32 ldintr;

	/* Be careful not to acknowledge any pending interrupt. */
	FUNC2(&sdev->irq_lock, flags);
	ldintr = FUNC0(sdev, LDINTR) | LDINTR_STATUS_MASK;
	if (enable)
		ldintr |= LDINTR_VEE;
	else
		ldintr &= ~LDINTR_VEE;
	FUNC1(sdev, LDINTR, ldintr);
	FUNC3(&sdev->irq_lock, flags);
}
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
struct shmob_drm_device {int /*<<< orphan*/  crtc; int /*<<< orphan*/  irq_lock; } ;
struct drm_device {struct shmob_drm_device* dev_private; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  LDINTR ; 
 int LDINTR_STATUS_MASK ; 
 int LDINTR_VES ; 
 int /*<<< orphan*/  FUNC0 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct shmob_drm_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct shmob_drm_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *arg)
{
	struct drm_device *dev = arg;
	struct shmob_drm_device *sdev = dev->dev_private;
	unsigned long flags;
	u32 status;

	/* Acknowledge interrupts. Putting interrupt enable and interrupt flag
	 * bits in the same register is really brain-dead design and requires
	 * taking a spinlock.
	 */
	FUNC4(&sdev->irq_lock, flags);
	status = FUNC1(sdev, LDINTR);
	FUNC2(sdev, LDINTR, status ^ LDINTR_STATUS_MASK);
	FUNC5(&sdev->irq_lock, flags);

	if (status & LDINTR_VES) {
		FUNC0(dev, 0);
		FUNC3(&sdev->crtc);
	}

	return IRQ_HANDLED;
}
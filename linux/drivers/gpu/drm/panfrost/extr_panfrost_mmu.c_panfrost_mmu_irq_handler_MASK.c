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
struct panfrost_device {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  IRQ_WAKE_THREAD ; 
 int /*<<< orphan*/  MMU_INT_MASK ; 
 int /*<<< orphan*/  MMU_INT_STAT ; 
 int /*<<< orphan*/  FUNC0 (struct panfrost_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC2(int irq, void *data)
{
	struct panfrost_device *pfdev = data;

	if (!FUNC0(pfdev, MMU_INT_STAT))
		return IRQ_NONE;

	FUNC1(pfdev, MMU_INT_MASK, 0);
	return IRQ_WAKE_THREAD;
}
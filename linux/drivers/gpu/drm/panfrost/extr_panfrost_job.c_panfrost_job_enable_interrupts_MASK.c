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
typedef  int /*<<< orphan*/  u32 ;
struct panfrost_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  JOB_INT_CLEAR ; 
 int /*<<< orphan*/  JOB_INT_MASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NUM_JOB_SLOTS ; 
 int /*<<< orphan*/  FUNC1 (struct panfrost_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct panfrost_device *pfdev)
{
	int j;
	u32 irq_mask = 0;

	for (j = 0; j < NUM_JOB_SLOTS; j++) {
		irq_mask |= FUNC0(j);
	}

	FUNC1(pfdev, JOB_INT_CLEAR, irq_mask);
	FUNC1(pfdev, JOB_INT_MASK, irq_mask);
}
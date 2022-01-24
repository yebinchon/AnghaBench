#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct device_queue_manager {TYPE_2__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  kgd; TYPE_1__* kfd2kgd; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* init_interrupts ) (int /*<<< orphan*/ ,unsigned int) ;} ;

/* Variables and functions */
 unsigned int FUNC0 (struct device_queue_manager*) ; 
 scalar_t__ FUNC1 (struct device_queue_manager*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct device_queue_manager *dqm)
{
	unsigned int i;

	for (i = 0 ; i < FUNC0(dqm) ; i++)
		if (FUNC1(dqm, 0, i))
			dqm->dev->kfd2kgd->init_interrupts(dqm->dev->kgd, i);
}
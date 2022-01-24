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
struct device_queue_manager {int /*<<< orphan*/  packets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device_queue_manager*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct device_queue_manager*) ; 

__attribute__((used)) static int FUNC2(struct device_queue_manager *dqm)
{
	FUNC0(dqm);
	return FUNC1(&dqm->packets, dqm);
}
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
struct queue {int dummy; } ;
struct qcm_process_device {int dummy; } ;
struct device_queue_manager {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device_queue_manager*,struct qcm_process_device*,struct queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_queue_manager*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_queue_manager*) ; 

__attribute__((used)) static int FUNC3(struct device_queue_manager *dqm,
				struct qcm_process_device *qpd,
				struct queue *q)
{
	int retval;

	FUNC1(dqm);
	retval = FUNC0(dqm, qpd, q);
	FUNC2(dqm);

	return retval;
}
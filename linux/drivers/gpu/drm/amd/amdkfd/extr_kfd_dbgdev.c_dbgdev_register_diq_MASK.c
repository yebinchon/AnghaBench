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
struct queue_properties {int /*<<< orphan*/  type; } ;
struct kfd_dbgdev {struct kernel_queue* kq; int /*<<< orphan*/  pqm; int /*<<< orphan*/  dev; } ;
struct kernel_queue {int dummy; } ;

/* Variables and functions */
 int EFAULT ; 
 int /*<<< orphan*/  KFD_QUEUE_TYPE_DIQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct queue_properties*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 struct kernel_queue* FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int FUNC5(struct kfd_dbgdev *dbgdev)
{
	struct queue_properties properties;
	unsigned int qid;
	struct kernel_queue *kq = NULL;
	int status;

	properties.type = KFD_QUEUE_TYPE_DIQ;

	status = FUNC0(dbgdev->pqm, dbgdev->dev, NULL,
				&properties, &qid);

	if (status) {
		FUNC4("Failed to create DIQ\n");
		return status;
	}

	FUNC3("DIQ Created with queue id: %d\n", qid);

	kq = FUNC2(dbgdev->pqm, qid);

	if (!kq) {
		FUNC4("Error getting DIQ\n");
		FUNC1(dbgdev->pqm, qid);
		return -EFAULT;
	}

	dbgdev->kq = kq;

	return status;
}
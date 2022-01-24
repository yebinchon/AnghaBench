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
struct qedr_dev {int dummy; } ;
typedef  enum qede_rdma_event { ____Placeholder_qede_rdma_event } qede_rdma_event ;

/* Variables and functions */
#define  QEDE_CHANGE_ADDR 131 
#define  QEDE_CLOSE 130 
#define  QEDE_DOWN 129 
#define  QEDE_UP 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_dev*) ; 

__attribute__((used)) static void FUNC5(struct qedr_dev *dev, enum qede_rdma_event event)
{
	switch (event) {
	case QEDE_UP:
		FUNC3(dev);
		break;
	case QEDE_DOWN:
		FUNC1(dev);
		break;
	case QEDE_CLOSE:
		FUNC4(dev);
		break;
	case QEDE_CHANGE_ADDR:
		FUNC2(dev);
		break;
	default:
		FUNC0("Event not supported\n");
	}
}
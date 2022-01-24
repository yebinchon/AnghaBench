#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  release; int /*<<< orphan*/  kref; } ;
struct chtls_dev {TYPE_1__ tlsdev; int /*<<< orphan*/  list; } ;
typedef  enum cxgb4_state { ____Placeholder_cxgb4_state } cxgb4_state ;

/* Variables and functions */
#define  CXGB4_STATE_DETACH 131 
#define  CXGB4_STATE_DOWN 130 
#define  CXGB4_STATE_START_RECOVERY 129 
#define  CXGB4_STATE_UP 128 
 int /*<<< orphan*/  cdev_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct chtls_dev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *handle, enum cxgb4_state new_state)
{
	struct chtls_dev *cdev = handle;

	switch (new_state) {
	case CXGB4_STATE_UP:
		FUNC0(cdev);
		break;
	case CXGB4_STATE_DOWN:
		break;
	case CXGB4_STATE_START_RECOVERY:
		break;
	case CXGB4_STATE_DETACH:
		FUNC3(&cdev_mutex);
		FUNC2(&cdev->list);
		FUNC4(&cdev_mutex);
		FUNC1(&cdev->tlsdev.kref, cdev->tlsdev.release);
		break;
	default:
		break;
	}
	return 0;
}
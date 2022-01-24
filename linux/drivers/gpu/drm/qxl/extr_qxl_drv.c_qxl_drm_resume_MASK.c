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
struct qxl_device {int /*<<< orphan*/  release_ring; TYPE_1__* ram_header; } ;
struct drm_device {struct qxl_device* dev_private; } ;
struct TYPE_2__ {int /*<<< orphan*/  int_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  QXL_INTERRUPT_MASK ; 
 int FUNC0 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct qxl_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, bool thaw)
{
	struct qxl_device *qdev = dev->dev_private;

	qdev->ram_header->int_mask = QXL_INTERRUPT_MASK;
	if (!thaw) {
		FUNC2(qdev);
		FUNC3(qdev->release_ring);
	}

	FUNC1(qdev);
	return FUNC0(dev);
}
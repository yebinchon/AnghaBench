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
struct TYPE_2__ {int /*<<< orphan*/  base; } ;
struct vc4_txp {TYPE_1__ connector; } ;
struct vc4_dev {int /*<<< orphan*/ * txp; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (struct device*) ; 
 struct vc4_dev* FUNC1 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct device *dev, struct device *master,
			   void *data)
{
	struct drm_device *drm = FUNC0(master);
	struct vc4_dev *vc4 = FUNC1(drm);
	struct vc4_txp *txp = FUNC0(dev);

	FUNC2(&txp->connector.base);

	vc4->txp = NULL;
}
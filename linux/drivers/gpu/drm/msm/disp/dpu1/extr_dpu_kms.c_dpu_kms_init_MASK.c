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
struct msm_kms {int irq; } ;
struct msm_drm_private {int /*<<< orphan*/  kms; } ;
struct drm_device {struct msm_drm_private* dev_private; } ;
struct dpu_kms {struct msm_kms base; TYPE_1__* pdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_3__ {TYPE_2__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 struct msm_kms* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct dpu_kms* FUNC3 (int /*<<< orphan*/ ) ; 

struct msm_kms *FUNC4(struct drm_device *dev)
{
	struct msm_drm_private *priv;
	struct dpu_kms *dpu_kms;
	int irq;

	if (!dev || !dev->dev_private) {
		FUNC0("drm device node invalid\n");
		return FUNC1(-EINVAL);
	}

	priv = dev->dev_private;
	dpu_kms = FUNC3(priv->kms);

	irq = FUNC2(dpu_kms->pdev->dev.of_node, 0);
	if (irq < 0) {
		FUNC0("failed to get irq: %d\n", irq);
		return FUNC1(irq);
	}
	dpu_kms->base.irq = irq;

	return &dpu_kms->base;
}
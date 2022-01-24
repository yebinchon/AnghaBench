#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct drm_device {void* dev_private; int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {unsigned long chipset; int /*<<< orphan*/  object_idr; } ;
typedef  TYPE_1__ drm_sis_private_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct drm_device *dev, unsigned long chipset)
{
	drm_sis_private_t *dev_priv;

	FUNC2(dev->pdev);

	dev_priv = FUNC1(sizeof(drm_sis_private_t), GFP_KERNEL);
	if (dev_priv == NULL)
		return -ENOMEM;

	FUNC0(&dev_priv->object_idr);
	dev->dev_private = (void *)dev_priv;
	dev_priv->chipset = chipset;

	return 0;
}
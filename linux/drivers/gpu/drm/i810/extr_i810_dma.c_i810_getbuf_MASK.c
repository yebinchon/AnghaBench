#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct drm_file {int dummy; } ;
struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_5__ {int last_dispatch; } ;
typedef  TYPE_1__ drm_i810_sarea_t ;
struct TYPE_6__ {scalar_t__ sarea_priv; scalar_t__* hw_status_page; } ;
typedef  TYPE_2__ drm_i810_private_t ;
struct TYPE_7__ {scalar_t__ granted; } ;
typedef  TYPE_3__ drm_i810_dma_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  current ; 
 int FUNC2 (struct drm_device*,TYPE_3__*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct drm_device *dev, void *data,
		       struct drm_file *file_priv)
{
	int retcode = 0;
	drm_i810_dma_t *d = data;
	drm_i810_private_t *dev_priv = (drm_i810_private_t *) dev->dev_private;
	u32 *hw_status = dev_priv->hw_status_page;
	drm_i810_sarea_t *sarea_priv = (drm_i810_sarea_t *)
	    dev_priv->sarea_priv;

	FUNC1(dev, file_priv);

	d->granted = 0;

	retcode = FUNC2(dev, d, file_priv);

	FUNC0("i810_dma: %d returning %d, granted = %d\n",
		  FUNC3(current), retcode, d->granted);

	sarea_priv->last_dispatch = (int)hw_status[5];

	return retcode;
}
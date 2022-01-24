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
struct drm_file {int dummy; } ;
struct drm_dma {scalar_t__ send_count; scalar_t__ request_count; scalar_t__ granted_count; } ;
struct drm_device_dma {scalar_t__ buf_count; } ;
struct drm_device {scalar_t__ dev_private; struct drm_device_dma* dma; } ;
typedef  int /*<<< orphan*/  drm_mga_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int FUNC3 (struct drm_device*,struct drm_file*,struct drm_dma*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct drm_device *dev, void *data,
		    struct drm_file *file_priv)
{
	struct drm_device_dma *dma = dev->dma;
	drm_mga_private_t *dev_priv = (drm_mga_private_t *) dev->dev_private;
	struct drm_dma *d = data;
	int ret = 0;

	FUNC1(dev, file_priv);

	/* Please don't send us buffers.
	 */
	if (d->send_count != 0) {
		FUNC0("Process %d trying to send %d buffers via drmDMA\n",
			  FUNC4(current), d->send_count);
		return -EINVAL;
	}

	/* We'll send you buffers.
	 */
	if (d->request_count < 0 || d->request_count > dma->buf_count) {
		FUNC0("Process %d trying to get %d buffers (of %d max)\n",
			  FUNC4(current), d->request_count,
			  dma->buf_count);
		return -EINVAL;
	}

	FUNC2(dev_priv);

	d->granted_count = 0;

	if (d->request_count)
		ret = FUNC3(dev, file_priv, d);

	return ret;
}
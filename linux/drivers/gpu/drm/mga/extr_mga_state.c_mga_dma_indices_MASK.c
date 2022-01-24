#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct drm_file {int dummy; } ;
struct drm_device_dma {size_t buf_count; struct drm_buf** buflist; } ;
struct drm_device {struct drm_device_dma* dma; int /*<<< orphan*/ * dev_private; } ;
struct drm_buf {TYPE_2__* dev_private; } ;
typedef  int /*<<< orphan*/  drm_mga_private_t ;
struct TYPE_4__ {size_t idx; int /*<<< orphan*/  end; int /*<<< orphan*/  start; scalar_t__ discard; } ;
typedef  TYPE_1__ drm_mga_indices_t ;
struct TYPE_5__ {int dispatched; scalar_t__ discard; } ;
typedef  TYPE_2__ drm_mga_buf_priv_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,struct drm_file*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct drm_device*,struct drm_buf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct drm_device*,struct drm_buf*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
	drm_mga_private_t *dev_priv = dev->dev_private;
	struct drm_device_dma *dma = dev->dma;
	struct drm_buf *buf;
	drm_mga_buf_priv_t *buf_priv;
	drm_mga_indices_t *indices = data;

	FUNC1(dev, file_priv);

	if (indices->idx < 0 || indices->idx > dma->buf_count)
		return -EINVAL;

	buf = dma->buflist[indices->idx];
	buf_priv = buf->dev_private;

	buf_priv->discard = indices->discard;

	if (!FUNC5(dev_priv)) {
		if (indices->discard) {
			if (buf_priv->dispatched == 1)
				FUNC0(buf_priv);
			buf_priv->dispatched = 0;
			FUNC4(dev, buf);
		}
		return -EINVAL;
	}

	FUNC2(dev_priv);

	FUNC3(dev, buf, indices->start, indices->end);

	return 0;
}
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
struct drm_device_dma {struct drm_buf_entry* bufs; } ;
struct drm_device {struct drm_device_dma* dma; } ;
struct drm_buf_entry {scalar_t__ buf_count; scalar_t__ low_mark; scalar_t__ high_mark; } ;
struct drm_buf_desc {scalar_t__ low_mark; scalar_t__ high_mark; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_HAVE_DMA ; 
 int /*<<< orphan*/  DRIVER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int DRM_MAX_ORDER ; 
 int DRM_MIN_ORDER ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC1 (struct drm_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(struct drm_device *dev, void *data,
			struct drm_file *file_priv)
{
	struct drm_device_dma *dma = dev->dma;
	struct drm_buf_desc *request = data;
	int order;
	struct drm_buf_entry *entry;

	if (!FUNC1(dev, DRIVER_LEGACY))
		return -EOPNOTSUPP;

	if (!FUNC1(dev, DRIVER_HAVE_DMA))
		return -EOPNOTSUPP;

	if (!dma)
		return -EINVAL;

	FUNC0("%d, %d, %d\n",
		  request->size, request->low_mark, request->high_mark);
	order = FUNC2(request->size);
	if (order < DRM_MIN_ORDER || order > DRM_MAX_ORDER)
		return -EINVAL;
	entry = &dma->bufs[order];

	if (request->low_mark < 0 || request->low_mark > entry->buf_count)
		return -EINVAL;
	if (request->high_mark < 0 || request->high_mark > entry->buf_count)
		return -EINVAL;

	entry->low_mark = request->low_mark;
	entry->high_mark = request->high_mark;

	return 0;
}
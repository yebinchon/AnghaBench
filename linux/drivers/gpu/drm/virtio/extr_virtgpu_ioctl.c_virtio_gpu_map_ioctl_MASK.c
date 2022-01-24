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
struct virtio_gpu_device {int /*<<< orphan*/  ddev; } ;
struct drm_virtgpu_map {int /*<<< orphan*/  offset; int /*<<< orphan*/  handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;

/* Variables and functions */
 int FUNC0 (struct drm_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct drm_device *dev, void *data,
				struct drm_file *file_priv)
{
	struct virtio_gpu_device *vgdev = dev->dev_private;
	struct drm_virtgpu_map *virtio_gpu_map = data;

	return FUNC0(file_priv, vgdev->ddev,
					 virtio_gpu_map->handle,
					 &virtio_gpu_map->offset);
}
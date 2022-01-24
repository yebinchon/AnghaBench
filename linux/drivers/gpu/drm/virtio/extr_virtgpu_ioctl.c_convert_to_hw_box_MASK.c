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
struct virtio_gpu_box {void* d; void* h; void* w; void* z; void* y; void* x; } ;
struct drm_virtgpu_3d_box {int /*<<< orphan*/  d; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct virtio_gpu_box *dst,
			      const struct drm_virtgpu_3d_box *src)
{
	dst->x = FUNC0(src->x);
	dst->y = FUNC0(src->y);
	dst->z = FUNC0(src->z);
	dst->w = FUNC0(src->w);
	dst->h = FUNC0(src->h);
	dst->d = FUNC0(src->d);
}
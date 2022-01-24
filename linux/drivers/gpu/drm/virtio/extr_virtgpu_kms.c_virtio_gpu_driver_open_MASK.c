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
struct virtio_gpu_fpriv {int ctx_id; } ;
struct virtio_gpu_device {int /*<<< orphan*/  has_virgl_3d; } ;
struct drm_file {struct virtio_gpu_fpriv* driver_priv; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int TASK_COMM_LEN ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_gpu_fpriv*) ; 
 struct virtio_gpu_fpriv* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (struct virtio_gpu_device*,int /*<<< orphan*/ ,char*) ; 

int FUNC5(struct drm_device *dev, struct drm_file *file)
{
	struct virtio_gpu_device *vgdev = dev->dev_private;
	struct virtio_gpu_fpriv *vfpriv;
	int id;
	char dbgname[TASK_COMM_LEN];

	/* can't create contexts without 3d renderer */
	if (!vgdev->has_virgl_3d)
		return 0;

	/* allocate a virt GPU context for this opener */
	vfpriv = FUNC2(sizeof(*vfpriv), GFP_KERNEL);
	if (!vfpriv)
		return -ENOMEM;

	FUNC0(dbgname, current);
	id = FUNC4(vgdev, FUNC3(dbgname), dbgname);
	if (id < 0) {
		FUNC1(vfpriv);
		return id;
	}

	vfpriv->ctx_id = id;
	file->driver_priv = vfpriv;
	return 0;
}
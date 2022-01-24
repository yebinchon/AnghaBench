#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dequeue_work; } ;
struct TYPE_6__ {int /*<<< orphan*/  dequeue_work; } ;
struct virtio_gpu_device {int vqs_ready; struct virtio_gpu_device* capsets; TYPE_4__* vdev; int /*<<< orphan*/  config_changed_work; TYPE_2__ cursorq; TYPE_1__ ctrlq; } ;
struct drm_device {struct virtio_gpu_device* dev_private; } ;
struct TYPE_9__ {TYPE_3__* config; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* del_vqs ) (TYPE_4__*) ;int /*<<< orphan*/  (* reset ) (TYPE_4__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_gpu_device*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_gpu_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_gpu_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_gpu_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_gpu_device*) ; 

void FUNC8(struct drm_device *dev)
{
	struct virtio_gpu_device *vgdev = dev->dev_private;

	vgdev->vqs_ready = false;
	FUNC0(&vgdev->ctrlq.dequeue_work);
	FUNC0(&vgdev->cursorq.dequeue_work);
	FUNC0(&vgdev->config_changed_work);
	vgdev->vdev->config->reset(vgdev->vdev);
	vgdev->vdev->config->del_vqs(vgdev->vdev);

	FUNC6(vgdev);
	FUNC7(vgdev);
	FUNC5(vgdev);
	FUNC4(vgdev);
	FUNC1(vgdev->capsets);
	FUNC1(vgdev);
}
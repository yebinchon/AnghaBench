#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct virtio_device {TYPE_1__* config; int /*<<< orphan*/  dev; struct virtio_crypto* priv; } ;
struct virtio_crypto {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct virtio_crypto*) ; 
 int /*<<< orphan*/  FUNC2 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct virtio_crypto*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_crypto*) ; 
 scalar_t__ FUNC5 (struct virtio_crypto*) ; 
 int /*<<< orphan*/  FUNC6 (struct virtio_crypto*) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_crypto*) ; 
 int /*<<< orphan*/  FUNC8 (struct virtio_crypto*) ; 

__attribute__((used)) static void FUNC9(struct virtio_device *vdev)
{
	struct virtio_crypto *vcrypto = vdev->priv;

	FUNC0(&vdev->dev, "Start virtcrypto_remove.\n");

	if (FUNC5(vcrypto))
		FUNC6(vcrypto);
	vdev->config->reset(vdev);
	FUNC8(vcrypto);
	FUNC3(vcrypto);
	FUNC4(vcrypto);
	FUNC7(vcrypto);
	FUNC1(vcrypto);
}
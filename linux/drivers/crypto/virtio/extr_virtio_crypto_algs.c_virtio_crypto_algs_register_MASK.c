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
typedef  int /*<<< orphan*/  uint32_t ;
struct virtio_crypto {TYPE_1__* vdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  cra_name; } ;
struct TYPE_6__ {scalar_t__ active_devs; TYPE_3__ algo; int /*<<< orphan*/  algonum; int /*<<< orphan*/  service; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  algs_lock ; 
 int FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_crypto*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* virtio_crypto_algs ; 

int FUNC6(struct virtio_crypto *vcrypto)
{
	int ret = 0;
	int i = 0;

	FUNC3(&algs_lock);

	for (i = 0; i < FUNC0(virtio_crypto_algs); i++) {

		uint32_t service = virtio_crypto_algs[i].service;
		uint32_t algonum = virtio_crypto_algs[i].algonum;

		if (!FUNC5(vcrypto, service, algonum))
			continue;

		if (virtio_crypto_algs[i].active_devs == 0) {
			ret = FUNC1(&virtio_crypto_algs[i].algo);
			if (ret)
				goto unlock;
		}

		virtio_crypto_algs[i].active_devs++;
		FUNC2(&vcrypto->vdev->dev, "Registered algo %s\n",
			 virtio_crypto_algs[i].algo.cra_name);
	}

unlock:
	FUNC4(&algs_lock);
	return ret;
}
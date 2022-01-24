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
struct virtio_crypto {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct virtio_crypto*) ; 
 int FUNC3 (struct virtio_crypto*) ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_crypto*) ; 
 int /*<<< orphan*/  FUNC5 (struct virtio_crypto*) ; 

__attribute__((used)) static int FUNC6(struct virtio_crypto *vi)
{
	int ret;

	/* Allocate send & receive queues */
	ret = FUNC2(vi);
	if (ret)
		goto err;

	ret = FUNC3(vi);
	if (ret)
		goto err_free;

	FUNC0();
	FUNC5(vi);
	FUNC1();

	return 0;

err_free:
	FUNC4(vi);
err:
	return ret;
}
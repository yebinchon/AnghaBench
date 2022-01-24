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
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct virtio_crypto*) ; 

int FUNC2(struct virtio_crypto *vcrypto)
{
	if (FUNC1(vcrypto)) {
		FUNC0("virtio_crypto: Failed to register crypto algs\n");
		return -EFAULT;
	}

	return 0;
}
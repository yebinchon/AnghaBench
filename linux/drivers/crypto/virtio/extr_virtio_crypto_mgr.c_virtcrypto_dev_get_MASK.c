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
struct virtio_crypto {int /*<<< orphan*/  owner; int /*<<< orphan*/  ref_count; } ;

/* Variables and functions */
 int EFAULT ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct virtio_crypto *vcrypto_dev)
{
	if (FUNC0(1, &vcrypto_dev->ref_count) == 1)
		if (!FUNC1(vcrypto_dev->owner))
			return -EFAULT;
	return 0;
}
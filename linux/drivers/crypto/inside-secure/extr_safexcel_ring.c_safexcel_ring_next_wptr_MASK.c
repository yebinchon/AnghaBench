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
struct safexcel_desc_ring {int write; int read; int offset; int base; int base_end; } ;
struct safexcel_crypto_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC1(struct safexcel_crypto_priv *priv,
				     struct safexcel_desc_ring *ring)
{
	void *ptr = ring->write;

	if ((ring->write == ring->read - ring->offset) ||
	    (ring->read == ring->base && ring->write == ring->base_end))
		return FUNC0(-ENOMEM);

	if (ring->write == ring->base_end)
		ring->write = ring->base;
	else
		ring->write += ring->offset;

	return ptr;
}
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
struct nitrox_device {int /*<<< orphan*/  ctx_pool; } ;
struct ctx_hdr {int dummy; } ;

/* Variables and functions */
 int CRYPTO_CTX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct nitrox_device*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nitrox_device *ndev)
{
	size_t size;

	/* Crypto context pool, 16 byte aligned */
	size = CRYPTO_CTX_SIZE + sizeof(struct ctx_hdr);
	ndev->ctx_pool = FUNC1("nitrox-context",
					 FUNC0(ndev), size, 16, 0);
	if (!ndev->ctx_pool)
		return -ENOMEM;

	return 0;
}
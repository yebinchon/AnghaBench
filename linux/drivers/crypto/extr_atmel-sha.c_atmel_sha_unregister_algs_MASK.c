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
struct TYPE_2__ {scalar_t__ has_sha_384_512; scalar_t__ has_sha224; scalar_t__ has_hmac; } ;
struct atmel_sha_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sha_1_256_algs ; 
 int /*<<< orphan*/  sha_224_alg ; 
 int /*<<< orphan*/ * sha_384_512_algs ; 
 int /*<<< orphan*/ * sha_hmac_algs ; 

__attribute__((used)) static void FUNC2(struct atmel_sha_dev *dd)
{
	int i;

	if (dd->caps.has_hmac)
		for (i = 0; i < FUNC0(sha_hmac_algs); i++)
			FUNC1(&sha_hmac_algs[i]);

	for (i = 0; i < FUNC0(sha_1_256_algs); i++)
		FUNC1(&sha_1_256_algs[i]);

	if (dd->caps.has_sha224)
		FUNC1(&sha_224_alg);

	if (dd->caps.has_sha_384_512) {
		for (i = 0; i < FUNC0(sha_384_512_algs); i++)
			FUNC1(&sha_384_512_algs[i]);
	}
}
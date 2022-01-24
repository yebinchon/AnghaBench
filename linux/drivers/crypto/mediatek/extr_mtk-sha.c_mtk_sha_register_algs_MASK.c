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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * algs_sha1_sha224_sha256 ; 
 int /*<<< orphan*/ * algs_sha384_sha512 ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(void)
{
	int err, i;

	for (i = 0; i < FUNC0(algs_sha1_sha224_sha256); i++) {
		err = FUNC1(&algs_sha1_sha224_sha256[i]);
		if (err)
			goto err_sha_224_256_algs;
	}

	for (i = 0; i < FUNC0(algs_sha384_sha512); i++) {
		err = FUNC1(&algs_sha384_sha512[i]);
		if (err)
			goto err_sha_384_512_algs;
	}

	return 0;

err_sha_384_512_algs:
	for (; i--; )
		FUNC2(&algs_sha384_sha512[i]);
	i = FUNC0(algs_sha1_sha224_sha256);
err_sha_224_256_algs:
	for (; i--; )
		FUNC2(&algs_sha1_sha224_sha256[i]);

	return err;
}
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
struct sahara_dev {scalar_t__ version; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SAHARA_VERSION_3 ; 
 int /*<<< orphan*/ * aes_algs ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * sha_v3_algs ; 
 int /*<<< orphan*/ * sha_v4_algs ; 

__attribute__((used)) static int FUNC5(struct sahara_dev *dev)
{
	int err;
	unsigned int i, j, k, l;

	for (i = 0; i < FUNC0(aes_algs); i++) {
		err = FUNC2(&aes_algs[i]);
		if (err)
			goto err_aes_algs;
	}

	for (k = 0; k < FUNC0(sha_v3_algs); k++) {
		err = FUNC1(&sha_v3_algs[k]);
		if (err)
			goto err_sha_v3_algs;
	}

	if (dev->version > SAHARA_VERSION_3)
		for (l = 0; l < FUNC0(sha_v4_algs); l++) {
			err = FUNC1(&sha_v4_algs[l]);
			if (err)
				goto err_sha_v4_algs;
		}

	return 0;

err_sha_v4_algs:
	for (j = 0; j < l; j++)
		FUNC3(&sha_v4_algs[j]);

err_sha_v3_algs:
	for (j = 0; j < k; j++)
		FUNC3(&sha_v3_algs[j]);

err_aes_algs:
	for (j = 0; j < i; j++)
		FUNC4(&aes_algs[j]);

	return err;
}
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
 int /*<<< orphan*/ * aes_algs ; 
 int /*<<< orphan*/  aes_gcm_alg ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(void)
{
	int err, i;

	for (i = 0; i < FUNC0(aes_algs); i++) {
		err = FUNC2(&aes_algs[i]);
		if (err)
			goto err_aes_algs;
	}

	err = FUNC1(&aes_gcm_alg);
	if (err)
		goto err_aes_algs;

	return 0;

err_aes_algs:
	for (; i--; )
		FUNC3(&aes_algs[i]);

	return err;
}
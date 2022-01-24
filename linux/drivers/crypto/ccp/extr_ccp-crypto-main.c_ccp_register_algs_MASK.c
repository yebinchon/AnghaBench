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
 int /*<<< orphan*/  aead_algs ; 
 int /*<<< orphan*/  aes_disable ; 
 int /*<<< orphan*/  akcipher_algs ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cipher_algs ; 
 int /*<<< orphan*/  des3_disable ; 
 int /*<<< orphan*/  hash_algs ; 
 int /*<<< orphan*/  rsa_disable ; 
 int /*<<< orphan*/  sha_disable ; 

__attribute__((used)) static int FUNC7(void)
{
	int ret;

	if (!aes_disable) {
		ret = FUNC1(&cipher_algs);
		if (ret)
			return ret;

		ret = FUNC2(&hash_algs);
		if (ret)
			return ret;

		ret = FUNC3(&cipher_algs);
		if (ret)
			return ret;

		ret = FUNC0(&aead_algs);
		if (ret)
			return ret;
	}

	if (!des3_disable) {
		ret = FUNC4(&cipher_algs);
		if (ret)
			return ret;
	}

	if (!sha_disable) {
		ret = FUNC6(&hash_algs);
		if (ret)
			return ret;
	}

	if (!rsa_disable) {
		ret = FUNC5(&akcipher_algs);
		if (ret)
			return ret;
	}

	return 0;
}
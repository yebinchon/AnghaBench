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
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  zip_comp_deflate ; 
 int /*<<< orphan*/  zip_comp_lzs ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  zip_scomp_deflate ; 
 int /*<<< orphan*/  zip_scomp_lzs ; 

__attribute__((used)) static int FUNC5(void)
{
	int ret;

	ret = FUNC0(&zip_comp_deflate);
	if (ret < 0) {
		FUNC4("Deflate algorithm registration failed\n");
		return ret;
	}

	ret = FUNC0(&zip_comp_lzs);
	if (ret < 0) {
		FUNC4("LZS algorithm registration failed\n");
		goto err_unregister_alg_deflate;
	}

	ret = FUNC1(&zip_scomp_deflate);
	if (ret < 0) {
		FUNC4("Deflate scomp algorithm registration failed\n");
		goto err_unregister_alg_lzs;
	}

	ret = FUNC1(&zip_scomp_lzs);
	if (ret < 0) {
		FUNC4("LZS scomp algorithm registration failed\n");
		goto err_unregister_scomp_deflate;
	}

	return ret;

err_unregister_scomp_deflate:
	FUNC3(&zip_scomp_deflate);
err_unregister_alg_lzs:
	FUNC2(&zip_comp_lzs);
err_unregister_alg_deflate:
	FUNC2(&zip_comp_deflate);

	return ret;
}
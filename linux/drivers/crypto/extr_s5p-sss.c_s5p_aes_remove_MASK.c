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
struct s5p_aes_dev {int use_hash; scalar_t__ clk; scalar_t__ pclk; int /*<<< orphan*/  hash_tasklet; TYPE_1__* res; int /*<<< orphan*/  tasklet; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int end; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENODEV ; 
 int /*<<< orphan*/ * algs ; 
 int /*<<< orphan*/ * algs_sha1_md5_sha256 ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct s5p_aes_dev* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/ * s5p_dev ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct s5p_aes_dev *pdata = FUNC4(pdev);
	int i;

	if (!pdata)
		return -ENODEV;

	for (i = 0; i < FUNC0(algs); i++)
		FUNC3(&algs[i]);

	FUNC5(&pdata->tasklet);
	if (pdata->use_hash) {
		for (i = FUNC0(algs_sha1_md5_sha256) - 1; i >= 0; i--)
			FUNC2(&algs_sha1_md5_sha256[i]);

		pdata->res->end -= 0x300;
		FUNC5(&pdata->hash_tasklet);
		pdata->use_hash = false;
	}

	if (pdata->pclk)
		FUNC1(pdata->pclk);

	FUNC1(pdata->clk);
	s5p_dev = NULL;

	return 0;
}
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
struct platform_device {int dummy; } ;
struct dcp {int caps; int /*<<< orphan*/  dcp_clk; int /*<<< orphan*/ * thread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t DCP_CHAN_CRYPTO ; 
 size_t DCP_CHAN_HASH_SHA ; 
 int MXS_DCP_CAPABILITY1_AES128 ; 
 int MXS_DCP_CAPABILITY1_SHA1 ; 
 int MXS_DCP_CAPABILITY1_SHA256 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dcp_aes_algs ; 
 int /*<<< orphan*/  dcp_sha1_alg ; 
 int /*<<< orphan*/  dcp_sha256_alg ; 
 int /*<<< orphan*/ * global_sdcp ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dcp* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct dcp *sdcp = FUNC5(pdev);

	if (sdcp->caps & MXS_DCP_CAPABILITY1_SHA256)
		FUNC2(&dcp_sha256_alg);

	if (sdcp->caps & MXS_DCP_CAPABILITY1_SHA1)
		FUNC2(&dcp_sha1_alg);

	if (sdcp->caps & MXS_DCP_CAPABILITY1_AES128)
		FUNC3(dcp_aes_algs, FUNC0(dcp_aes_algs));

	FUNC4(sdcp->thread[DCP_CHAN_HASH_SHA]);
	FUNC4(sdcp->thread[DCP_CHAN_CRYPTO]);

	FUNC1(sdcp->dcp_clk);

	FUNC6(pdev, NULL);

	global_sdcp = NULL;

	return 0;
}
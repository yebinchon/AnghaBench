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
struct stm32_cryp {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; int /*<<< orphan*/  list; int /*<<< orphan*/  engine; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int /*<<< orphan*/  aead_algs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ cryp_list ; 
 int /*<<< orphan*/  crypto_algs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct stm32_cryp* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct platform_device *pdev)
{
	struct stm32_cryp *cryp = FUNC6(pdev);
	int ret;

	if (!cryp)
		return -ENODEV;

	ret = FUNC8(cryp->dev);
	if (ret < 0)
		return ret;

	FUNC3(aead_algs, FUNC0(aead_algs));
	FUNC4(crypto_algs, FUNC0(crypto_algs));

	FUNC2(cryp->engine);

	FUNC10(&cryp_list.lock);
	FUNC5(&cryp->list);
	FUNC11(&cryp_list.lock);

	FUNC7(cryp->dev);
	FUNC9(cryp->dev);

	FUNC1(cryp->clk);

	return 0;
}
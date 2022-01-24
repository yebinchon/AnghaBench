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
struct vmw_private {int has_dx; int /*<<< orphan*/  fifo; int /*<<< orphan*/  fman; int /*<<< orphan*/ * cman; int /*<<< orphan*/  bdev; scalar_t__ has_mob; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VMW_PL_MOB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct vmw_private*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct vmw_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct vmw_private*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct vmw_private*) ; 
 int FUNC13 (struct vmw_private*) ; 

__attribute__((used)) static int FUNC14(struct vmw_private *dev_priv)
{
	int ret;

	ret = FUNC10(dev_priv, &dev_priv->fifo);
	if (FUNC3(ret != 0)) {
		FUNC0("Unable to initialize FIFO.\n");
		return ret;
	}
	FUNC9(dev_priv->fman);
	dev_priv->cman = FUNC4(dev_priv);
	if (FUNC1(dev_priv->cman)) {
		dev_priv->cman = NULL;
		dev_priv->has_dx = false;
	}

	ret = FUNC13(dev_priv);
	if (ret)
		goto out_no_mob;

	ret = FUNC7(dev_priv);
	if (FUNC3(ret != 0))
		goto out_no_query_bo;

	return 0;

out_no_query_bo:
	if (dev_priv->cman)
		FUNC6(dev_priv->cman);
	if (dev_priv->has_mob) {
		(void) FUNC2(&dev_priv->bdev, VMW_PL_MOB);
		FUNC12(dev_priv);
	}
	if (dev_priv->cman)
		FUNC5(dev_priv->cman);
out_no_mob:
	FUNC8(dev_priv->fman);
	FUNC11(dev_priv, &dev_priv->fifo);
	return ret;
}
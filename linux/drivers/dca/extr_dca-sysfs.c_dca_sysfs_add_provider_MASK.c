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
struct device {int dummy; } ;
struct dca_provider {int id; struct device* cd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  dca_class ; 
 int /*<<< orphan*/  dca_idr ; 
 int /*<<< orphan*/  dca_idr_lock ; 
 struct device* FUNC3 (int /*<<< orphan*/ ,struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,struct dca_provider*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(struct dca_provider *dca, struct device *dev)
{
	struct device *cd;
	int ret;

	FUNC5(GFP_KERNEL);
	FUNC8(&dca_idr_lock);

	ret = FUNC4(&dca_idr, dca, 0, 0, GFP_NOWAIT);
	if (ret >= 0)
		dca->id = ret;

	FUNC9(&dca_idr_lock);
	FUNC6();
	if (ret < 0)
		return ret;

	cd = FUNC3(dca_class, dev, FUNC1(0, 0), NULL, "dca%d", dca->id);
	if (FUNC0(cd)) {
		FUNC8(&dca_idr_lock);
		FUNC7(&dca_idr, dca->id);
		FUNC9(&dca_idr_lock);
		return FUNC2(cd);
	}
	dca->cd = cd;
	return 0;
}
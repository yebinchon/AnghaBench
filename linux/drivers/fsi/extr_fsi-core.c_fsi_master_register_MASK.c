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
struct fsi_master {int /*<<< orphan*/  scan_lock; int /*<<< orphan*/  dev; int /*<<< orphan*/  idx; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MAX ; 
 int /*<<< orphan*/  dev_attr_break ; 
 int /*<<< orphan*/  dev_attr_rescan ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fsi_master*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  master_ida ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct device_node*,char*) ; 

int FUNC12(struct fsi_master *master)
{
	int rc;
	struct device_node *np;

	FUNC8(&master->scan_lock);
	master->idx = FUNC6(&master_ida, 0, INT_MAX, GFP_KERNEL);
	FUNC1(&master->dev, "fsi%d", master->idx);

	rc = FUNC4(&master->dev);
	if (rc) {
		FUNC7(&master_ida, master->idx);
		return rc;
	}

	rc = FUNC2(&master->dev, &dev_attr_rescan);
	if (rc) {
		FUNC3(&master->dev);
		FUNC7(&master_ida, master->idx);
		return rc;
	}

	rc = FUNC2(&master->dev, &dev_attr_break);
	if (rc) {
		FUNC3(&master->dev);
		FUNC7(&master_ida, master->idx);
		return rc;
	}

	np = FUNC0(&master->dev);
	if (!FUNC11(np, "no-scan-on-init")) {
		FUNC9(&master->scan_lock);
		FUNC5(master);
		FUNC10(&master->scan_lock);
	}

	return 0;
}
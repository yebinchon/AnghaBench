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
struct fsi_master {int n_links; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC1 (struct fsi_master*,int) ; 
 int FUNC2 (struct fsi_master*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fsi_master*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct fsi_master *master)
{
	int link, rc;

	for (link = 0; link < master->n_links; link++) {
		rc = FUNC2(master, link);
		if (rc) {
			FUNC0(&master->dev,
				"enable link %d failed: %d\n", link, rc);
			continue;
		}
		rc = FUNC1(master, link);
		if (rc) {
			FUNC0(&master->dev,
				"break to link %d failed: %d\n", link, rc);
			continue;
		}

		FUNC3(master, link, 0);
	}

	return 0;
}
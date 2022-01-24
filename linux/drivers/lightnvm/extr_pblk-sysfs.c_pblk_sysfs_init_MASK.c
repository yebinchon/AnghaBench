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
struct pblk {int /*<<< orphan*/  kobj; int /*<<< orphan*/  disk; } ;
struct gendisk {struct pblk* private_data; } ;
struct device {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_ADD ; 
 struct device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pblk*,char*) ; 
 int /*<<< orphan*/  pblk_ktype ; 

int FUNC5(struct gendisk *tdisk)
{
	struct pblk *pblk = tdisk->private_data;
	struct device *parent_dev = FUNC0(pblk->disk);
	int ret;

	ret = FUNC2(&pblk->kobj, &pblk_ktype,
					FUNC1(&parent_dev->kobj),
					"%s", "pblk");
	if (ret) {
		FUNC4(pblk, "could not register\n");
		return ret;
	}

	FUNC3(&pblk->kobj, KOBJ_ADD);
	return 0;
}
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
struct pblk {int /*<<< orphan*/  kobj; } ;
struct gendisk {struct pblk* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct gendisk *tdisk)
{
	struct pblk *pblk = tdisk->private_data;

	FUNC2(&pblk->kobj, KOBJ_REMOVE);
	FUNC0(&pblk->kobj);
	FUNC1(&pblk->kobj);
}
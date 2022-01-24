#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_udata {int dummy; } ;
struct ib_pd {int dummy; } ;
struct c4iw_pd {int /*<<< orphan*/  pdid; struct c4iw_dev* rhp; } ;
struct TYPE_6__ {int /*<<< orphan*/  cur; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; TYPE_2__ pd; } ;
struct TYPE_5__ {int /*<<< orphan*/  pdid_table; } ;
struct TYPE_8__ {TYPE_3__ stats; TYPE_1__ resource; } ;
struct c4iw_dev {TYPE_4__ rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct ib_pd*,int /*<<< orphan*/ ) ; 
 struct c4iw_pd* FUNC4 (struct ib_pd*) ; 

__attribute__((used)) static void FUNC5(struct ib_pd *pd, struct ib_udata *udata)
{
	struct c4iw_dev *rhp;
	struct c4iw_pd *php;

	php = FUNC4(pd);
	rhp = php->rhp;
	FUNC3("ibpd %p pdid 0x%x\n", pd, php->pdid);
	FUNC0(&rhp->rdev.resource.pdid_table, php->pdid);
	FUNC1(&rhp->rdev.stats.lock);
	rhp->rdev.stats.pd.cur--;
	FUNC2(&rhp->rdev.stats.lock);
}
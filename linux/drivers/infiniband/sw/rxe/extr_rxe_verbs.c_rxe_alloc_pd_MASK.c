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
struct rxe_pd {int /*<<< orphan*/  pelem; } ;
struct rxe_dev {int /*<<< orphan*/  pd_pool; } ;
struct ib_udata {int dummy; } ;
struct ib_pd {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rxe_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rxe_pd* FUNC2 (struct ib_pd*) ; 

__attribute__((used)) static int FUNC3(struct ib_pd *ibpd, struct ib_udata *udata)
{
	struct rxe_dev *rxe = FUNC1(ibpd->device);
	struct rxe_pd *pd = FUNC2(ibpd);

	return FUNC0(&rxe->pd_pool, &pd->pelem);
}
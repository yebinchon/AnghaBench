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
struct rxe_ucontext {int /*<<< orphan*/  pelem; } ;
struct rxe_dev {int /*<<< orphan*/  uc_pool; } ;
struct ib_udata {int dummy; } ;
struct ib_ucontext {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct rxe_dev* FUNC1 (int /*<<< orphan*/ ) ; 
 struct rxe_ucontext* FUNC2 (struct ib_ucontext*) ; 

__attribute__((used)) static int FUNC3(struct ib_ucontext *uctx, struct ib_udata *udata)
{
	struct rxe_dev *rxe = FUNC1(uctx->device);
	struct rxe_ucontext *uc = FUNC2(uctx);

	return FUNC0(&rxe->uc_pool, &uc->pelem);
}
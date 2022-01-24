#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dev; int /*<<< orphan*/  mst_state; } ;
struct nv50_mstm {TYPE_1__ mgr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct nv50_mstm *mstm)
{
	int ret;

	if (!mstm || !mstm->mgr.mst_state)
		return;

	ret = FUNC0(&mstm->mgr);
	if (ret == -1) {
		FUNC1(&mstm->mgr, false);
		FUNC2(mstm->mgr.dev);
	}
}
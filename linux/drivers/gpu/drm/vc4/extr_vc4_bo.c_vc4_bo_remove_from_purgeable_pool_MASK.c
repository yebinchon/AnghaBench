#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;
struct vc4_dev {TYPE_3__ purgeable; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct vc4_bo {TYPE_2__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct vc4_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vc4_bo*) ; 

void FUNC4(struct vc4_bo *bo)
{
	struct vc4_dev *vc4 = FUNC2(bo->base.base.dev);

	FUNC0(&vc4->purgeable.lock);
	FUNC3(bo);
	FUNC1(&vc4->purgeable.lock);
}
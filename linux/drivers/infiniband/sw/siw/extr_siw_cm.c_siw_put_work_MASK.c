#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct siw_cm_work {TYPE_1__* cep; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  work_freelist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct siw_cm_work *work)
{
	FUNC0(&work->list);
	FUNC2(&work->cep->lock);
	FUNC1(&work->list, &work->cep->work_freelist);
	FUNC3(&work->cep->lock);
}
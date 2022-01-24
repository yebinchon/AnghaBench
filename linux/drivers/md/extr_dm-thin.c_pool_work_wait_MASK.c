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
struct pool_work {int /*<<< orphan*/  complete; int /*<<< orphan*/  worker; } ;
struct pool {int /*<<< orphan*/  wq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void (*) (struct work_struct*)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct pool_work *pw, struct pool *pool,
			   void (*fn)(struct work_struct *))
{
	FUNC0(&pw->worker, fn);
	FUNC1(&pw->complete);
	FUNC2(pool->wq, &pw->worker);
	FUNC3(&pw->complete);
}
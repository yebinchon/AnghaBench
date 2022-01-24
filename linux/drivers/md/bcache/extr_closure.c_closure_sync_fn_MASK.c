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
struct task_struct {int dummy; } ;
struct closure_syncer {int done; int /*<<< orphan*/  task; } ;
struct closure {struct closure_syncer* s; } ;

/* Variables and functions */
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct task_struct*) ; 

__attribute__((used)) static void FUNC4(struct closure *cl)
{
	struct closure_syncer *s = cl->s;
	struct task_struct *p;

	FUNC1();
	p = FUNC0(s->task);
	s->done = 1;
	FUNC3(p);
	FUNC2();
}
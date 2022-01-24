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
struct selector {int /*<<< orphan*/  lock; int /*<<< orphan*/  valid_paths; } ;
struct path_selector {struct selector* context; } ;
struct path_info {int /*<<< orphan*/  list; } ;
struct dm_path {struct path_info* pscontext; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct path_selector *ps, struct dm_path *path)
{
	struct selector *s = ps->context;
	struct path_info *pi = path->pscontext;
	unsigned long flags;

	FUNC1(&s->lock, flags);
	FUNC0(&pi->list, &s->valid_paths);
	FUNC2(&s->lock, flags);

	return 0;
}
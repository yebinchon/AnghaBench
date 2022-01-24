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
struct sync_timeline {int /*<<< orphan*/  lock; int /*<<< orphan*/  pt_list; int /*<<< orphan*/  pt_tree; int /*<<< orphan*/  name; int /*<<< orphan*/  context; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RB_ROOT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct sync_timeline* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sync_timeline*) ; 

__attribute__((used)) static struct sync_timeline *FUNC7(const char *name)
{
	struct sync_timeline *obj;

	obj = FUNC3(sizeof(*obj), GFP_KERNEL);
	if (!obj)
		return NULL;

	FUNC2(&obj->kref);
	obj->context = FUNC1(1);
	FUNC5(obj->name, name, sizeof(obj->name));

	obj->pt_tree = RB_ROOT;
	FUNC0(&obj->pt_list);
	FUNC4(&obj->lock);

	FUNC6(obj);

	return obj;
}
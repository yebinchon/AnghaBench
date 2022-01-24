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
struct kobject {int dummy; } ;
struct efivars {struct kobject* kobject; struct efivar_operations const* ops; } ;
struct efivar_operations {int dummy; } ;

/* Variables and functions */
 int EINTR ; 
 struct efivars* __efivars ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  efivars_lock ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int FUNC3(struct efivars *efivars,
		     const struct efivar_operations *ops,
		     struct kobject *kobject)
{
	if (FUNC0(&efivars_lock))
		return -EINTR;

	efivars->ops = ops;
	efivars->kobject = kobject;

	__efivars = efivars;

	FUNC1("Registered efivars operations\n");

	FUNC2(&efivars_lock);

	return 0;
}
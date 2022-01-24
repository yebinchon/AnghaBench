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
typedef  int /*<<< orphan*/  umode_t ;
struct file_operations {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC5 (char const*,struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct dentry*,int /*<<< orphan*/ ,struct file_operations const*,void*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static int FUNC8(const char *name, umode_t mode,
		       struct dentry *parent, struct dentry **dentry,
		       const struct file_operations *fops, void *data)
{
	int error;

	FUNC3(FUNC2(parent));
	*dentry = FUNC5(name, parent, FUNC7(name));
	if (!FUNC0(*dentry))
		error = FUNC6(FUNC2(parent), *dentry,
				    mode, fops, data);
	else
		error = FUNC1(*dentry);
	FUNC4(FUNC2(parent));

	return error;
}
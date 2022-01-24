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
struct dentry {int /*<<< orphan*/  d_lock; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct dentry *parent, char *name)
{
	struct dentry *tmp;
	int ret;

	tmp = FUNC5(name, parent, FUNC10(name));

	if (FUNC0(tmp)) {
		ret = FUNC1(tmp);
		goto bail;
	}

	FUNC8(&tmp->d_lock);
	if (FUNC6(tmp)) {
		FUNC2(tmp);
		FUNC9(&tmp->d_lock);
		FUNC7(FUNC3(parent), tmp);
	} else {
		FUNC9(&tmp->d_lock);
	}
	FUNC4(tmp);

	ret = 0;
bail:
	/*
	 * We don't expect clients to care about the return value, but
	 * it's there if they need it.
	 */
	return ret;
}
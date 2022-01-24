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
typedef  int /*<<< orphan*/  unit ;
struct super_block {int /*<<< orphan*/  s_root; } ;
struct qib_devdata {int unit; int num_pports; int flags; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int QIB_HAS_QSFP ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct dentry* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct dentry* FUNC8 (char*,struct dentry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static int FUNC15(struct super_block *sb,
			       struct qib_devdata *dd)
{
	struct dentry *dir, *root;
	char unit[10];
	int ret, i;

	root = FUNC4(sb->s_root);
	FUNC6(FUNC3(root));
	FUNC12(unit, sizeof(unit), "%u", dd->unit);
	dir = FUNC8(unit, root, FUNC14(unit));

	if (FUNC0(dir)) {
		ret = FUNC1(dir);
		FUNC9("Lookup of %s failed\n", unit);
		goto bail;
	}

	FUNC6(FUNC3(dir));
	FUNC10(dir, "counters");
	FUNC10(dir, "counter_names");
	FUNC10(dir, "portcounter_names");
	for (i = 0; i < dd->num_pports; i++) {
		char fname[24];

		FUNC13(fname, "port%dcounters", i + 1);
		FUNC10(dir, fname);
		if (dd->flags & QIB_HAS_QSFP) {
			FUNC13(fname, "qsfp%d", i + 1);
			FUNC10(dir, fname);
		}
	}
	FUNC10(dir, "flash");
	FUNC7(FUNC3(dir));
	ret = FUNC11(FUNC3(root), dir);
	FUNC2(dir);
	FUNC5(dir);

bail:
	FUNC7(FUNC3(root));
	FUNC5(root);
	return ret;
}
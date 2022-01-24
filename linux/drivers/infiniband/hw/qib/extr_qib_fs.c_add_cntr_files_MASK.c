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
struct super_block {struct dentry* s_root; } ;
struct qib_devdata {int unit; int num_pports; int flags; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int QIB_HAS_QSFP ; 
 int S_IFDIR ; 
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IWUSR ; 
 int S_IXUGO ; 
 int /*<<< orphan*/ * cntr_ops ; 
 int FUNC0 (char*,int,struct dentry*,struct dentry**,int /*<<< orphan*/ *,struct qib_devdata*) ; 
 int /*<<< orphan*/  flash_ops ; 
 int /*<<< orphan*/ * portcntr_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 int /*<<< orphan*/ * qsfp_ops ; 
 int /*<<< orphan*/  simple_dir_operations ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct super_block *sb, struct qib_devdata *dd)
{
	struct dentry *dir, *tmp;
	char unit[10];
	int ret, i;

	/* create the per-unit directory */
	FUNC2(unit, sizeof(unit), "%u", dd->unit);
	ret = FUNC0(unit, S_IFDIR|S_IRUGO|S_IXUGO, sb->s_root, &dir,
			  &simple_dir_operations, dd);
	if (ret) {
		FUNC1("create_file(%s) failed: %d\n", unit, ret);
		goto bail;
	}

	/* create the files in the new directory */
	ret = FUNC0("counters", S_IFREG|S_IRUGO, dir, &tmp,
			  &cntr_ops[0], dd);
	if (ret) {
		FUNC1("create_file(%s/counters) failed: %d\n",
		       unit, ret);
		goto bail;
	}
	ret = FUNC0("counter_names", S_IFREG|S_IRUGO, dir, &tmp,
			  &cntr_ops[1], dd);
	if (ret) {
		FUNC1("create_file(%s/counter_names) failed: %d\n",
		       unit, ret);
		goto bail;
	}
	ret = FUNC0("portcounter_names", S_IFREG|S_IRUGO, dir, &tmp,
			  &portcntr_ops[0], dd);
	if (ret) {
		FUNC1("create_file(%s/%s) failed: %d\n",
		       unit, "portcounter_names", ret);
		goto bail;
	}
	for (i = 1; i <= dd->num_pports; i++) {
		char fname[24];

		FUNC3(fname, "port%dcounters", i);
		/* create the files in the new directory */
		ret = FUNC0(fname, S_IFREG|S_IRUGO, dir, &tmp,
				  &portcntr_ops[i], dd);
		if (ret) {
			FUNC1("create_file(%s/%s) failed: %d\n",
				unit, fname, ret);
			goto bail;
		}
		if (!(dd->flags & QIB_HAS_QSFP))
			continue;
		FUNC3(fname, "qsfp%d", i);
		ret = FUNC0(fname, S_IFREG|S_IRUGO, dir, &tmp,
				  &qsfp_ops[i - 1], dd);
		if (ret) {
			FUNC1("create_file(%s/%s) failed: %d\n",
				unit, fname, ret);
			goto bail;
		}
	}

	ret = FUNC0("flash", S_IFREG|S_IWUSR|S_IRUGO, dir, &tmp,
			  &flash_ops, dd);
	if (ret)
		FUNC1("create_file(%s/flash) failed: %d\n",
			unit, ret);
bail:
	return ret;
}
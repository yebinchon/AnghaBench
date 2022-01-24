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
struct qib_ibdev {struct dentry* qib_ibdev_dbg; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int unit; } ;

/* Variables and functions */
 int /*<<< orphan*/  _ctx_stats_file_ops ; 
 int /*<<< orphan*/  _opcode_stats_file_ops ; 
 int /*<<< orphan*/  _qp_stats_file_ops ; 
 TYPE_1__* FUNC0 (struct qib_ibdev*) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct qib_ibdev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qib_dbg_root ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

void FUNC4(struct qib_ibdev *ibd)
{
	struct dentry *root;
	char name[10];

	FUNC3(name, sizeof(name), "qib%d", FUNC0(ibd)->unit);
	root = FUNC1(name, qib_dbg_root);
	ibd->qib_ibdev_dbg = root;

	FUNC2("opcode_stats", 0400, root, ibd,
			    &_opcode_stats_file_ops);
	FUNC2("ctx_stats", 0400, root, ibd, &_ctx_stats_file_ops);
	FUNC2("qp_stats", 0400, root, ibd, &_qp_stats_file_ops);
}
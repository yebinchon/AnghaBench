#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int dummy; } ;
struct TYPE_6__ {TYPE_3__* dev; } ;
struct pgpath {TYPE_2__ path; int /*<<< orphan*/  activate_path; } ;
struct path_selector {TYPE_1__* type; } ;
struct multipath {scalar_t__ hw_handler_name; } ;
struct dm_target {char* error; int /*<<< orphan*/  table; struct multipath* private; } ;
struct dm_arg_set {int argc; int /*<<< orphan*/  argv; } ;
struct TYPE_7__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_5__ {int (* add_path ) (struct path_selector*,TYPE_2__*,int,int /*<<< orphan*/ ,char**) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct pgpath* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  activate_path_work ; 
 struct pgpath* FUNC2 () ; 
 struct request_queue* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_target*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_arg_set*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct pgpath*) ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 char* FUNC10 (struct request_queue*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct multipath*,char const**,char**) ; 
 int FUNC12 (struct path_selector*,TYPE_2__*,int,int /*<<< orphan*/ ,char**) ; 

__attribute__((used)) static struct pgpath *FUNC13(struct dm_arg_set *as, struct path_selector *ps,
				 struct dm_target *ti)
{
	int r;
	struct pgpath *p;
	struct multipath *m = ti->private;
	struct request_queue *q;
	const char *attached_handler_name = NULL;

	/* we need at least a path arg */
	if (as->argc < 1) {
		ti->error = "no device given";
		return FUNC0(-EINVAL);
	}

	p = FUNC2();
	if (!p)
		return FUNC0(-ENOMEM);

	r = FUNC4(ti, FUNC6(as), FUNC7(ti->table),
			  &p->path.dev);
	if (r) {
		ti->error = "error getting device";
		goto bad;
	}

	q = FUNC3(p->path.dev->bdev);
	attached_handler_name = FUNC10(q, GFP_KERNEL);
	if (attached_handler_name || m->hw_handler_name) {
		FUNC1(&p->activate_path, activate_path_work);
		r = FUNC11(p->path.dev->bdev, m, &attached_handler_name, &ti->error);
		FUNC9(attached_handler_name);
		if (r) {
			FUNC5(ti, p->path.dev);
			goto bad;
		}
	}

	r = ps->type->add_path(ps, &p->path, as->argc, as->argv, &ti->error);
	if (r) {
		FUNC5(ti, p->path.dev);
		goto bad;
	}

	return p;
 bad:
	FUNC8(p);
	return FUNC0(r);
}
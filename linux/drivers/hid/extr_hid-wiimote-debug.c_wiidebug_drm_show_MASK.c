#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wiimote_debug {TYPE_1__* wdata; } ;
struct seq_file {struct wiimote_debug* private; } ;
typedef  size_t __u8 ;
struct TYPE_4__ {size_t drm; int /*<<< orphan*/  lock; } ;
struct TYPE_3__ {TYPE_2__ state; } ;

/* Variables and functions */
 size_t WIIPROTO_REQ_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 char** wiidebug_drmmap ; 

__attribute__((used)) static int FUNC3(struct seq_file *f, void *p)
{
	struct wiimote_debug *dbg = f->private;
	const char *str = NULL;
	unsigned long flags;
	__u8 drm;

	FUNC1(&dbg->wdata->state.lock, flags);
	drm = dbg->wdata->state.drm;
	FUNC2(&dbg->wdata->state.lock, flags);

	if (drm < WIIPROTO_REQ_MAX)
		str = wiidebug_drmmap[drm];
	if (!str)
		str = "unknown";

	FUNC0(f, "%s\n", str);

	return 0;
}
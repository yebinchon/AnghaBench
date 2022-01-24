#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct timespec64 {int dummy; } ;
struct TYPE_5__ {int host_time; int ref_time; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int (* read ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int WLTIMEDELTA ; 
 TYPE_3__ host_ts ; 
 TYPE_1__* hyperv_cs ; 
 struct timespec64 FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static struct timespec64 FUNC4(void)
{
	struct timespec64 ts;
	u64 newtime, reftime;
	unsigned long flags;

	FUNC1(&host_ts.lock, flags);
	reftime = hyperv_cs->read(hyperv_cs);
	newtime = host_ts.host_time + (reftime - host_ts.ref_time);
	ts = FUNC0((newtime - WLTIMEDELTA) * 100);
	FUNC2(&host_ts.lock, flags);

	return ts;
}
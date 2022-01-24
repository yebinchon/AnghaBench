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
struct vc4_perfmon {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  idr; } ;
struct vc4_file {TYPE_1__ perfmon; } ;

/* Variables and functions */
 struct vc4_perfmon* FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct vc4_perfmon*) ; 

struct vc4_perfmon *FUNC4(struct vc4_file *vc4file, int id)
{
	struct vc4_perfmon *perfmon;

	FUNC1(&vc4file->perfmon.lock);
	perfmon = FUNC0(&vc4file->perfmon.idr, id);
	FUNC3(perfmon);
	FUNC2(&vc4file->perfmon.lock);

	return perfmon;
}
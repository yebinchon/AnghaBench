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
struct mirror_set {int /*<<< orphan*/  rh; int /*<<< orphan*/  io_client; TYPE_1__* mirror; } ;
struct dm_target {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_target*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mirror_set*) ; 

__attribute__((used)) static void FUNC4(struct mirror_set *ms, struct dm_target *ti,
			 unsigned int m)
{
	while (m--)
		FUNC1(ti, ms->mirror[m].dev);

	FUNC0(ms->io_client);
	FUNC2(ms->rh);
	FUNC3(ms);
}
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
typedef  int /*<<< orphan*/  u64 ;
struct seq_file {struct nitrox_device* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  dropped; int /*<<< orphan*/  completed; int /*<<< orphan*/  posted; } ;
struct nitrox_device {TYPE_1__ stats; int /*<<< orphan*/  idx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct seq_file *s, void *v)
{
	struct nitrox_device *ndev = s->private;

	FUNC1(s, "NITROX [%d] Request Statistics\n", ndev->idx);
	FUNC1(s, "  Posted: %llu\n",
		   (u64)FUNC0(&ndev->stats.posted));
	FUNC1(s, "  Completed: %llu\n",
		   (u64)FUNC0(&ndev->stats.completed));
	FUNC1(s, "  Dropped: %llu\n",
		   (u64)FUNC0(&ndev->stats.dropped));

	return 0;
}
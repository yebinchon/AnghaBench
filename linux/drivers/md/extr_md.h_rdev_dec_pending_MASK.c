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
struct mddev {int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; } ;
struct md_rdev {int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct md_rdev *rdev, struct mddev *mddev)
{
	int faulty = FUNC3(Faulty, &rdev->flags);
	if (FUNC0(&rdev->nr_pending) && faulty) {
		FUNC2(MD_RECOVERY_NEEDED, &mddev->recovery);
		FUNC1(mddev->thread);
	}
}
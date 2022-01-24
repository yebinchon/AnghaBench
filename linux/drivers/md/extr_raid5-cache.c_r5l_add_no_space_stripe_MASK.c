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
struct stripe_head {int /*<<< orphan*/  log_list; } ;
struct r5l_log {int /*<<< orphan*/  no_space_stripes_lock; int /*<<< orphan*/  no_space_stripes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct r5l_log *log,
					   struct stripe_head *sh)
{
	FUNC1(&log->no_space_stripes_lock);
	FUNC0(&sh->log_list, &log->no_space_stripes);
	FUNC2(&log->no_space_stripes_lock);
}
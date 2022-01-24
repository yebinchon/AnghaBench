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
struct c4iw_wr_wait {int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  _c4iw_free_wr_wait ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct c4iw_wr_wait*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct c4iw_wr_wait *wr_waitp)
{
	FUNC3("wr_wait %p ref before put %u\n", wr_waitp,
		 FUNC2(&wr_waitp->kref));
	FUNC0(FUNC2(&wr_waitp->kref) == 0);
	FUNC1(&wr_waitp->kref, _c4iw_free_wr_wait);
}
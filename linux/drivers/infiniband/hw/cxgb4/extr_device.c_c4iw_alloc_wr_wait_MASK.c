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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct c4iw_wr_wait* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct c4iw_wr_wait*) ; 

struct c4iw_wr_wait *FUNC3(gfp_t gfp)
{
	struct c4iw_wr_wait *wr_waitp;

	wr_waitp = FUNC1(sizeof(*wr_waitp), gfp);
	if (wr_waitp) {
		FUNC0(&wr_waitp->kref);
		FUNC2("wr_wait %p\n", wr_waitp);
	}
	return wr_waitp;
}
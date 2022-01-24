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
typedef  int u32 ;
struct host1x_syncpt {int id; struct host1x* host; } ;
struct host1x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct host1x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct host1x_syncpt*) ; 
 scalar_t__ FUNC4 (struct host1x_syncpt*) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct host1x_syncpt *sp)
{
	struct host1x *host = sp->host;
	u32 reg_offset = sp->id / 32;

	if (!FUNC3(sp) &&
	    FUNC4(sp))
		return -EINVAL;

	FUNC2(host, FUNC0(sp->id % 32),
			   FUNC1(reg_offset));
	FUNC5();

	return 0;
}
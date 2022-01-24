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
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct c4iw_ep {TYPE_1__ com; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct c4iw_ep*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct c4iw_ep *ep)
{
	FUNC2("ep %p stopping\n", ep);
	FUNC1(&ep->timer);
	if (!FUNC3(TIMEOUT, &ep->com.flags)) {
		FUNC0(&ep->com);
		return 0;
	}
	return 1;
}
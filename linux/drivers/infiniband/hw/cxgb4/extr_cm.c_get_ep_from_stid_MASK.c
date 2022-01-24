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
struct c4iw_listen_ep {int /*<<< orphan*/  com; } ;
struct c4iw_dev {int /*<<< orphan*/  stids; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct c4iw_listen_ep* FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct c4iw_listen_ep *FUNC4(struct c4iw_dev *dev,
					       unsigned int stid)
{
	struct c4iw_listen_ep *ep;
	unsigned long flags;

	FUNC2(&dev->stids, flags);
	ep = FUNC1(&dev->stids, stid);
	if (ep)
		FUNC0(&ep->com);
	FUNC3(&dev->stids, flags);
	return ep;
}
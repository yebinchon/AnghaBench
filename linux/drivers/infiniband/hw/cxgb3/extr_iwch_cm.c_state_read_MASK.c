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
struct iwch_ep_common {int state; int /*<<< orphan*/  lock; } ;
typedef  enum iwch_ep_state { ____Placeholder_iwch_ep_state } iwch_ep_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static enum iwch_ep_state FUNC2(struct iwch_ep_common *epc)
{
	unsigned long flags;
	enum iwch_ep_state state;

	FUNC0(&epc->lock, flags);
	state = epc->state;
	FUNC1(&epc->lock, flags);
	return state;
}
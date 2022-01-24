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
struct net_device {int dummy; } ;
typedef  enum bonding_slave_state { ____Placeholder_bonding_slave_state } bonding_slave_state ;

/* Variables and functions */
 int BONDING_SLAVE_STATE_ACTIVE ; 
 int BONDING_SLAVE_STATE_INACTIVE ; 
 int BONDING_SLAVE_STATE_NA ; 
 struct net_device* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 scalar_t__ FUNC2 (struct net_device*) ; 

__attribute__((used)) static enum bonding_slave_state FUNC3(struct net_device *dev,
								   struct net_device *upper)
{
	if (upper && FUNC2(upper)) {
		struct net_device *pdev =
			FUNC0(FUNC1(upper));

		if (pdev)
			return dev == pdev ? BONDING_SLAVE_STATE_ACTIVE :
				BONDING_SLAVE_STATE_INACTIVE;
	}

	return BONDING_SLAVE_STATE_NA;
}
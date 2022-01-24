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
struct hsc_channel {int /*<<< orphan*/  tx_msgs_queue; int /*<<< orphan*/  rx_msgs_queue; int /*<<< orphan*/  free_msgs_list; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  rx_wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct hsc_channel *channel)
{
	FUNC1(&channel->rx_wait);
	FUNC1(&channel->tx_wait);
	FUNC2(&channel->lock);
	FUNC0(&channel->free_msgs_list);
	FUNC0(&channel->rx_msgs_queue);
	FUNC0(&channel->tx_msgs_queue);
}
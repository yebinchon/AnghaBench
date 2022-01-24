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
struct ipoib_mcast {int backoff; int /*<<< orphan*/  pkt_queue; int /*<<< orphan*/  neigh_list; int /*<<< orphan*/  list; void* delay_until; void* created; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* jiffies ; 
 struct ipoib_mcast* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct ipoib_mcast *FUNC3(struct net_device *dev,
					     int can_sleep)
{
	struct ipoib_mcast *mcast;

	mcast = FUNC1(sizeof(*mcast), can_sleep ? GFP_KERNEL : GFP_ATOMIC);
	if (!mcast)
		return NULL;

	mcast->dev = dev;
	mcast->created = jiffies;
	mcast->delay_until = jiffies;
	mcast->backoff = 1;

	FUNC0(&mcast->list);
	FUNC0(&mcast->neigh_list);
	FUNC2(&mcast->pkt_queue);

	return mcast;
}
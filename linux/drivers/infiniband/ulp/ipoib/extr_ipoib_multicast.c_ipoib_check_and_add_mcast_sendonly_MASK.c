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
typedef  int u8 ;
struct list_head {int dummy; } ;
struct ipoib_mcast {int /*<<< orphan*/  list; int /*<<< orphan*/  rb_node; int /*<<< orphan*/  flags; } ;
struct ipoib_dev_priv {int /*<<< orphan*/  multicast_tree; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_MCAST_FLAG_SENDONLY ; 
 struct ipoib_mcast* FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct ipoib_dev_priv *priv, u8 *mgid,
				struct list_head *remove_list)
{
	/* Is this multicast ? */
	if (*mgid == 0xff) {
		struct ipoib_mcast *mcast = FUNC0(priv->dev, mgid);

		if (mcast && FUNC4(IPOIB_MCAST_FLAG_SENDONLY, &mcast->flags)) {
			FUNC2(&mcast->list);
			FUNC3(&mcast->rb_node, &priv->multicast_tree);
			FUNC1(&mcast->list, remove_list);
		}
	}
}
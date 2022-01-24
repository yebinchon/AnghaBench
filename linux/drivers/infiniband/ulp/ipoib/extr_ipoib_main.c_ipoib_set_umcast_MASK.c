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
struct ipoib_dev_priv {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_UMCAST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct ipoib_dev_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipoib_dev_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct net_device *ndev, int umcast_val)
{
	struct ipoib_dev_priv *priv = FUNC1(ndev);

	if (umcast_val > 0) {
		FUNC3(IPOIB_FLAG_UMCAST, &priv->flags);
		FUNC2(priv, "ignoring multicast groups joined directly "
				"by userspace\n");
	} else
		FUNC0(IPOIB_FLAG_UMCAST, &priv->flags);
}
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
struct ipoib_dev_priv {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 scalar_t__ FUNC1 (struct net_device*,int) ; 
 struct ipoib_dev_priv* FUNC2 (struct net_device*) ; 
 int ipoib_recvq_size ; 
 int /*<<< orphan*/  FUNC3 (struct ipoib_dev_priv*,char*,int) ; 

__attribute__((used)) static int FUNC4(struct net_device *dev)
{
	struct ipoib_dev_priv *priv = FUNC2(dev);
	int i;

	for (i = 0; i < ipoib_recvq_size; ++i) {
		if (!FUNC0(dev, i)) {
			FUNC3(priv, "failed to allocate receive buffer %d\n", i);
			return -ENOMEM;
		}
		if (FUNC1(dev, i)) {
			FUNC3(priv, "ipoib_ib_post_receive failed for buf %d\n", i);
			return -EIO;
		}
	}

	return 0;
}
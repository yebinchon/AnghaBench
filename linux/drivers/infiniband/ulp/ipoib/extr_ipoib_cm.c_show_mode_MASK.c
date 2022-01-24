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
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  IPOIB_FLAG_ADMIN_CM ; 
 struct ipoib_dev_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC3 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *d, struct device_attribute *attr,
			 char *buf)
{
	struct net_device *dev = FUNC3(d);
	struct ipoib_dev_priv *priv = FUNC0(dev);

	if (FUNC2(IPOIB_FLAG_ADMIN_CM, &priv->flags))
		return FUNC1(buf, "connected\n");
	else
		return FUNC1(buf, "datagram\n");
}
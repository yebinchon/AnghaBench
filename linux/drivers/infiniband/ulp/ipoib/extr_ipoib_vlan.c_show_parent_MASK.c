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
struct net_device {int dummy; } ;
struct ipoib_dev_priv {TYPE_1__* parent; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 struct ipoib_dev_priv* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*) ; 
 struct net_device* FUNC2 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *d, struct device_attribute *attr,
			   char *buf)
{
	struct net_device *dev = FUNC2(d);
	struct ipoib_dev_priv *priv = FUNC0(dev);

	return FUNC1(buf, "%s\n", priv->parent->name);
}
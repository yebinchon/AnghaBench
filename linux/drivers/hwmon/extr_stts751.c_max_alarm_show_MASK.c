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
struct stts751_priv {int notify_max; int max_alert; int /*<<< orphan*/  access_lock; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct stts751_priv* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct stts751_priv*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev,
			      struct device_attribute *attr, char *buf)
{
	int ret;
	struct stts751_priv *priv = FUNC0(dev);

	FUNC1(&priv->access_lock);
	ret = FUNC4(priv);
	if (!ret)
		priv->notify_max = true;
	FUNC2(&priv->access_lock);
	if (ret < 0)
		return ret;

	return FUNC3(buf, PAGE_SIZE, "%d\n", priv->max_alert);
}
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
struct stts751_priv {long therm; long hyst; int /*<<< orphan*/  access_lock; TYPE_1__* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  STTS751_REG_HYST ; 
 long FUNC0 (long,int,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long) ; 
 struct stts751_priv* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (char const*,int,long*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct stts751_priv*,long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev, struct device_attribute *attr,
			  const char *buf, size_t count)
{
	int ret;
	long temp;

	struct stts751_priv *priv = FUNC2(dev);

	if (FUNC3(buf, 10, &temp) < 0)
		return -EINVAL;

	FUNC4(&priv->access_lock);
	/* HW works in range -64C to +127.937C */
	temp = FUNC0(temp, -64000, priv->therm);
	priv->hyst = temp;
	FUNC1(&priv->client->dev, "setting hyst %ld", temp);
	temp = priv->therm - temp;
	ret = FUNC6(priv, temp, STTS751_REG_HYST);
	FUNC5(&priv->access_lock);
	if (ret)
		return ret;

	return count;
}
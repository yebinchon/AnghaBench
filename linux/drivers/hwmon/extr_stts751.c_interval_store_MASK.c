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
struct stts751_priv {int interval; int /*<<< orphan*/  access_lock; TYPE_1__* client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int EINVAL ; 
 int /*<<< orphan*/  STTS751_REG_RATE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 struct stts751_priv* FUNC2 (struct device*) ; 
 int FUNC3 (unsigned long,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (char const*,int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct stts751_priv*) ; 
 int /*<<< orphan*/ * stts751_intervals ; 

__attribute__((used)) static ssize_t FUNC9(struct device *dev,
			      struct device_attribute *attr, const char *buf,
			      size_t count)
{
	unsigned long val;
	int idx;
	int ret = count;
	struct stts751_priv *priv = FUNC2(dev);

	if (FUNC5(buf, 10, &val) < 0)
		return -EINVAL;

	idx = FUNC3(val, stts751_intervals,
				      FUNC0(stts751_intervals));

	FUNC1(&priv->client->dev, "setting interval. req:%lu, idx: %d, val: %d",
		val, idx, stts751_intervals[idx]);

	FUNC6(&priv->access_lock);
	if (priv->interval == idx)
		goto exit;

	/*
	 * In early development stages I've become suspicious about the chip
	 * starting to misbehave if I ever set, even briefly, an invalid
	 * configuration. While I'm not sure this is really needed, be
	 * conservative and set rate/resolution in such an order that avoids
	 * passing through an invalid configuration.
	 */

	/* speed up: lower the resolution, then modify convrate */
	if (priv->interval < idx) {
		FUNC1(&priv->client->dev, "lower resolution, then modify convrate");
		priv->interval = idx;
		ret = FUNC8(priv);
		if (ret)
			goto exit;
	}

	ret = FUNC4(priv->client, STTS751_REG_RATE, idx);
	if (ret)
		goto exit;
	/* slow down: modify convrate, then raise resolution */
	if (priv->interval != idx) {
		FUNC1(&priv->client->dev, "modify convrate, then raise resolution");
		priv->interval = idx;
		ret = FUNC8(priv);
		if (ret)
			goto exit;
	}
	ret = count;
exit:
	FUNC7(&priv->access_lock);

	return ret;
}
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
struct rcar_gyroadc {struct device* dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct rcar_gyroadc *priv, bool on)
{
	struct device *dev = priv->dev;
	int ret;

	if (on) {
		ret = FUNC0(dev);
		if (ret < 0)
			FUNC3(dev);
	} else {
		FUNC1(dev);
		ret = FUNC2(dev);
	}

	return ret;
}
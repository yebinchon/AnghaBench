#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct device {int dummy; } ;
struct atlas_data {int /*<<< orphan*/  regmap; TYPE_2__* chip; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_4__ {int /*<<< orphan*/  delay; } ;
struct TYPE_3__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct atlas_data *data, int reg, __be32 *val)
{
	struct device *dev = &data->client->dev;
	int suspended = FUNC5(dev);
	int ret;

	ret = FUNC1(dev);
	if (ret < 0) {
		FUNC4(dev);
		return ret;
	}

	if (suspended)
		FUNC0(data->chip->delay);

	ret = FUNC6(data->regmap, reg, (u8 *) val, sizeof(*val));

	FUNC2(dev);
	FUNC3(dev);

	return ret;
}
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
struct mxt_data {scalar_t__ multitouch; TYPE_1__* client; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct mxt_data*) ; 
 int FUNC3 (struct mxt_data*) ; 
 int FUNC4 (struct mxt_data*) ; 
 int FUNC5 (struct mxt_data*,struct firmware const*) ; 

__attribute__((used)) static int FUNC6(struct mxt_data *data,
				 const struct firmware *cfg)
{
	struct device *dev = &data->client->dev;
	int error;

	error = FUNC3(data);
	if (error) {
		FUNC0(dev, "Failed to initialize power cfg\n");
		return error;
	}

	if (cfg) {
		error = FUNC5(data, cfg);
		if (error)
			FUNC1(dev, "Error %d updating config\n", error);
	}

	if (data->multitouch) {
		error = FUNC4(data);
		if (error)
			return error;
	} else {
		FUNC1(dev, "No touch object detected\n");
	}

	FUNC2(data);

	return 0;
}
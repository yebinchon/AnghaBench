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
struct mxt_data {TYPE_1__* client; } ;
struct device {int dummy; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 unsigned long FUNC1 (unsigned int) ; 
 long FUNC2 (struct completion*,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct mxt_data *data,
				   struct completion *comp,
				   unsigned int timeout_ms)
{
	struct device *dev = &data->client->dev;
	unsigned long timeout = FUNC1(timeout_ms);
	long ret;

	ret = FUNC2(comp, timeout);
	if (ret < 0) {
		return ret;
	} else if (ret == 0) {
		FUNC0(dev, "Wait for completion timed out.\n");
		return -ETIMEDOUT;
	}
	return 0;
}
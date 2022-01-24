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
struct device {int dummy; } ;
struct cyapa {TYPE_1__* client; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ETIMEDOUT ; 
 int FUNC0 (struct cyapa*) ; 
 scalar_t__ FUNC1 (struct cyapa*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct cyapa *cyapa)
{
	struct device *dev = &cyapa->client->dev;
	int error;

	error = FUNC0(cyapa);
	if (error) {
		if (error != -ETIMEDOUT && error != -ENODEV &&
			FUNC1(cyapa)) {
			FUNC3(dev, "device detected but not operational\n");
			return 0;
		}

		FUNC2(dev, "no device detected: %d\n", error);
		return error;
	}

	return 0;
}
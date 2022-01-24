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
struct ak8975_data {TYPE_1__* client; int /*<<< orphan*/  vid; int /*<<< orphan*/  vdd; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(const struct ak8975_data *data)
{
	int ret;

	ret = FUNC1(data->vdd);
	if (ret) {
		FUNC0(&data->client->dev,
			 "Failed to enable specified Vdd supply\n");
		return ret;
	}
	ret = FUNC1(data->vid);
	if (ret) {
		FUNC0(&data->client->dev,
			 "Failed to enable specified Vid supply\n");
		return ret;
	}
	/*
	 * According to the datasheet the power supply rise time i 200us
	 * and the minimum wait time before mode setting is 100us, in
	 * total 300 us. Add some margin and say minimum 500us here.
	 */
	FUNC2(500, 1000);
	return 0;
}
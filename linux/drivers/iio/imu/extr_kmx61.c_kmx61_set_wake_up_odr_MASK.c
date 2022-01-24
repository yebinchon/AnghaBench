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
struct kmx61_data {TYPE_1__* client; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  KMX61_REG_CTRL2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int,int) ; 

__attribute__((used)) static int FUNC3(struct kmx61_data *data, int val, int val2)
{
	int ret, odr_bits;

	odr_bits = FUNC2(val, val2);
	if (odr_bits < 0)
		return odr_bits;

	ret = FUNC1(data->client, KMX61_REG_CTRL2,
					odr_bits);
	if (ret < 0)
		FUNC0(&data->client->dev, "Error writing reg_ctrl2\n");
	return ret;
}
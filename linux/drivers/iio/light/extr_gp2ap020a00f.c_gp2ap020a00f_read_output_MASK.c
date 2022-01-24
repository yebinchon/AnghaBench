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
typedef  int /*<<< orphan*/  u8 ;
struct gp2ap020a00f_data {int /*<<< orphan*/  regmap; TYPE_1__* client; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct gp2ap020a00f_data*) ; 

__attribute__((used)) static int FUNC4(struct gp2ap020a00f_data *data,
					unsigned int output_reg, int *val)
{
	u8 reg_buf[2];
	int err;

	err = FUNC3(data);
	if (err < 0)
		FUNC0(&data->client->dev, "data ready timeout\n");

	err = FUNC2(data->regmap, output_reg, reg_buf, 2);
	if (err < 0)
		return err;

	*val = FUNC1((__le16 *)reg_buf);

	return err;
}
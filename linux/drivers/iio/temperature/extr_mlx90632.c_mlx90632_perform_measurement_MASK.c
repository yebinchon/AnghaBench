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
struct mlx90632_data {TYPE_1__* client; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  MLX90632_REG_STATUS ; 
 unsigned int MLX90632_STAT_CYCLE_POS ; 
 unsigned int MLX90632_STAT_DATA_RDY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(struct mlx90632_data *data)
{
	int ret, tries = 100;
	unsigned int reg_status;

	ret = FUNC2(data->regmap, MLX90632_REG_STATUS,
				 MLX90632_STAT_DATA_RDY, 0);
	if (ret < 0)
		return ret;

	while (tries-- > 0) {
		ret = FUNC1(data->regmap, MLX90632_REG_STATUS,
				  &reg_status);
		if (ret < 0)
			return ret;
		if (reg_status & MLX90632_STAT_DATA_RDY)
			break;
		FUNC3(10000, 11000);
	}

	if (tries < 0) {
		FUNC0(&data->client->dev, "data not ready");
		return -ETIMEDOUT;
	}

	return (reg_status & MLX90632_STAT_CYCLE_POS) >> 2;
}
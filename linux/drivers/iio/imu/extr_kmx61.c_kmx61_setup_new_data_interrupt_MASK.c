#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct kmx61_data {TYPE_1__* client; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int KMX61_ACC ; 
 int KMX61_ALL_STBY ; 
 int KMX61_MAG ; 
 int /*<<< orphan*/  KMX61_REG_CTRL1 ; 
 int KMX61_REG_CTRL1_BIT_DRDYE ; 
 int /*<<< orphan*/  KMX61_REG_INC1 ; 
 int KMX61_REG_INC1_BIT_DRDYA ; 
 int KMX61_REG_INC1_BIT_DRDYM ; 
 int KMX61_REG_INC1_BIT_IEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct kmx61_data*,int*,int) ; 
 int FUNC4 (struct kmx61_data*,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct kmx61_data *data,
					  bool status, u8 device)
{
	u8 mode;
	int ret;

	ret = FUNC3(data, &mode, KMX61_ACC | KMX61_MAG);
	if (ret < 0)
		return ret;

	ret = FUNC4(data, KMX61_ALL_STBY, KMX61_ACC | KMX61_MAG, true);
	if (ret < 0)
		return ret;

	ret = FUNC1(data->client, KMX61_REG_INC1);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_ctrl1\n");
		return ret;
	}

	if (status) {
		ret |= KMX61_REG_INC1_BIT_IEN;
		if (device & KMX61_ACC)
			ret |= KMX61_REG_INC1_BIT_DRDYA;
		if (device & KMX61_MAG)
			ret |=  KMX61_REG_INC1_BIT_DRDYM;
	} else {
		ret &= ~KMX61_REG_INC1_BIT_IEN;
		if (device & KMX61_ACC)
			ret &= ~KMX61_REG_INC1_BIT_DRDYA;
		if (device & KMX61_MAG)
			ret &= ~KMX61_REG_INC1_BIT_DRDYM;
	}
	ret = FUNC2(data->client, KMX61_REG_INC1, ret);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error writing reg_int_ctrl1\n");
		return ret;
	}

	ret = FUNC1(data->client, KMX61_REG_CTRL1);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error reading reg_ctrl1\n");
		return ret;
	}

	if (status)
		ret |= KMX61_REG_CTRL1_BIT_DRDYE;
	else
		ret &= ~KMX61_REG_CTRL1_BIT_DRDYE;

	ret = FUNC2(data->client, KMX61_REG_CTRL1, ret);
	if (ret < 0) {
		FUNC0(&data->client->dev, "Error writing reg_ctrl1\n");
		return ret;
	}

	return FUNC4(data, mode, KMX61_ACC | KMX61_MAG, true);
}
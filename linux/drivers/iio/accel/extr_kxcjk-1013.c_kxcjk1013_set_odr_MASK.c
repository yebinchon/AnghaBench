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
struct kxcjk1013_data {scalar_t__ chipset; TYPE_1__* client; int /*<<< orphan*/  odr_bits; } ;
struct kx_odr_map {int /*<<< orphan*/  wuf_bits; int /*<<< orphan*/  odr_bits; } ;
typedef  enum kxcjk1013_mode { ____Placeholder_kxcjk1013_mode } kxcjk1013_mode ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct kx_odr_map const*) ; 
 int /*<<< orphan*/  KXCJK1013_REG_CTRL2 ; 
 int /*<<< orphan*/  KXCJK1013_REG_DATA_CTRL ; 
 scalar_t__ KXTF9 ; 
 int OPERATION ; 
 int FUNC2 (struct kx_odr_map const*) ; 
 int STANDBY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kx_odr_map* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC6 (struct kxcjk1013_data*,int*) ; 
 int FUNC7 (struct kxcjk1013_data*,int) ; 
 int /*<<< orphan*/  kxtf9_samp_freq_table ; 
 int /*<<< orphan*/  samp_freq_table ; 

__attribute__((used)) static int FUNC8(struct kxcjk1013_data *data, int val, int val2)
{
	int ret;
	enum kxcjk1013_mode store_mode;
	const struct kx_odr_map *odr_setting;

	ret = FUNC6(data, &store_mode);
	if (ret < 0)
		return ret;

	if (data->chipset == KXTF9)
		odr_setting = FUNC5(kxtf9_samp_freq_table,
						       FUNC0(kxtf9_samp_freq_table),
						       val, val2);
	else
		odr_setting = FUNC5(samp_freq_table,
						       FUNC0(samp_freq_table),
						       val, val2);

	if (FUNC1(odr_setting))
		return FUNC2(odr_setting);

	/* To change ODR, the chip must be set to STANDBY as per spec */
	ret = FUNC7(data, STANDBY);
	if (ret < 0)
		return ret;

	ret = FUNC4(data->client, KXCJK1013_REG_DATA_CTRL,
					odr_setting->odr_bits);
	if (ret < 0) {
		FUNC3(&data->client->dev, "Error writing data_ctrl\n");
		return ret;
	}

	data->odr_bits = odr_setting->odr_bits;

	ret = FUNC4(data->client, KXCJK1013_REG_CTRL2,
					odr_setting->wuf_bits);
	if (ret < 0) {
		FUNC3(&data->client->dev, "Error writing reg_ctrl2\n");
		return ret;
	}

	if (store_mode == OPERATION) {
		ret = FUNC7(data, OPERATION);
		if (ret < 0)
			return ret;
	}

	return 0;
}
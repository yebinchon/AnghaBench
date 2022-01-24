#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct flexcop_device {TYPE_3__* fc_i2c_adap; int /*<<< orphan*/  init_state; int /*<<< orphan*/  dev; int /*<<< orphan*/  i2c_mutex; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct TYPE_7__ {TYPE_1__ dev; int /*<<< orphan*/ * algo_data; int /*<<< orphan*/ * algo; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {TYPE_2__ i2c_adap; int /*<<< orphan*/  port; struct flexcop_device* fc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_I2C_PORT_DEMOD ; 
 int /*<<< orphan*/  FC_I2C_PORT_EEPROM ; 
 int /*<<< orphan*/  FC_I2C_PORT_TUNER ; 
 int /*<<< orphan*/  FC_STATE_I2C_INIT ; 
 int /*<<< orphan*/  flexcop_algo ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(struct flexcop_device *fc)
{
	int ret;
	FUNC3(&fc->i2c_mutex);

	fc->fc_i2c_adap[0].fc = fc;
	fc->fc_i2c_adap[1].fc = fc;
	fc->fc_i2c_adap[2].fc = fc;
	fc->fc_i2c_adap[0].port = FC_I2C_PORT_DEMOD;
	fc->fc_i2c_adap[1].port = FC_I2C_PORT_EEPROM;
	fc->fc_i2c_adap[2].port = FC_I2C_PORT_TUNER;

	FUNC4(fc->fc_i2c_adap[0].i2c_adap.name, "B2C2 FlexCop I2C to demod",
		sizeof(fc->fc_i2c_adap[0].i2c_adap.name));
	FUNC4(fc->fc_i2c_adap[1].i2c_adap.name, "B2C2 FlexCop I2C to eeprom",
		sizeof(fc->fc_i2c_adap[1].i2c_adap.name));
	FUNC4(fc->fc_i2c_adap[2].i2c_adap.name, "B2C2 FlexCop I2C to tuner",
		sizeof(fc->fc_i2c_adap[2].i2c_adap.name));

	FUNC2(&fc->fc_i2c_adap[0].i2c_adap, &fc->fc_i2c_adap[0]);
	FUNC2(&fc->fc_i2c_adap[1].i2c_adap, &fc->fc_i2c_adap[1]);
	FUNC2(&fc->fc_i2c_adap[2].i2c_adap, &fc->fc_i2c_adap[2]);

	fc->fc_i2c_adap[0].i2c_adap.algo =
		fc->fc_i2c_adap[1].i2c_adap.algo =
		fc->fc_i2c_adap[2].i2c_adap.algo = &flexcop_algo;
	fc->fc_i2c_adap[0].i2c_adap.algo_data =
		fc->fc_i2c_adap[1].i2c_adap.algo_data =
		fc->fc_i2c_adap[2].i2c_adap.algo_data = NULL;
	fc->fc_i2c_adap[0].i2c_adap.dev.parent =
		fc->fc_i2c_adap[1].i2c_adap.dev.parent =
		fc->fc_i2c_adap[2].i2c_adap.dev.parent = fc->dev;

	ret = FUNC0(&fc->fc_i2c_adap[0].i2c_adap);
	if (ret < 0)
		return ret;

	ret = FUNC0(&fc->fc_i2c_adap[1].i2c_adap);
	if (ret < 0)
		goto adap_1_failed;

	ret = FUNC0(&fc->fc_i2c_adap[2].i2c_adap);
	if (ret < 0)
		goto adap_2_failed;

	fc->init_state |= FC_STATE_I2C_INIT;
	return 0;

adap_2_failed:
	FUNC1(&fc->fc_i2c_adap[1].i2c_adap);
adap_1_failed:
	FUNC1(&fc->fc_i2c_adap[0].i2c_adap);
	return ret;
}
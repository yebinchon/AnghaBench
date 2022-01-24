#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxuio_cfg {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct drxj_data {scalar_t__ smart_ant_inverted; } ;
struct drx_demod_instance {struct i2c_device_addr* my_i2c_dev_addr; scalar_t__ my_ext_attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRX_UIO1 ; 
 int /*<<< orphan*/  DRX_UIO_MODE_FIRMWARE_SMA ; 
 int /*<<< orphan*/  SIO_PDR_SMA_TX_CFG__A ; 
 int /*<<< orphan*/  SIO_PDR_SMA_TX_GPIO_FNC__A ; 
 int SIO_SA_TX_COMMAND_TX_ENABLE__M ; 
 int SIO_SA_TX_COMMAND_TX_INVERT__M ; 
 int /*<<< orphan*/  SIO_SA_TX_COMMAND__A ; 
 int SIO_TOP_COMM_KEY_KEY ; 
 int /*<<< orphan*/  SIO_TOP_COMM_KEY__A ; 
 int FUNC0 (struct drx_demod_instance*,struct drxuio_cfg*) ; 
 int FUNC1 (struct i2c_device_addr*,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_device_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct drx_demod_instance *demod)
{
	struct drxj_data *ext_attr = NULL;
	struct i2c_device_addr *dev_addr = NULL;
	struct drxuio_cfg uio_cfg = { DRX_UIO1, DRX_UIO_MODE_FIRMWARE_SMA };
	int rc;
	u16 data = 0;

	dev_addr = demod->my_i2c_dev_addr;
	ext_attr = (struct drxj_data *) demod->my_ext_attr;

	/*  Write magic word to enable pdr reg write               */
	rc = FUNC2(demod->my_i2c_dev_addr, SIO_TOP_COMM_KEY__A, SIO_TOP_COMM_KEY_KEY, 0);
	if (rc != 0) {
		FUNC3("error %d\n", rc);
		goto rw_error;
	}
	/* init smart antenna */
	rc = FUNC1(dev_addr, SIO_SA_TX_COMMAND__A, &data, 0);
	if (rc != 0) {
		FUNC3("error %d\n", rc);
		goto rw_error;
	}
	if (ext_attr->smart_ant_inverted) {
		rc = FUNC2(dev_addr, SIO_SA_TX_COMMAND__A, (data | SIO_SA_TX_COMMAND_TX_INVERT__M) | SIO_SA_TX_COMMAND_TX_ENABLE__M, 0);
		if (rc != 0) {
			FUNC3("error %d\n", rc);
			goto rw_error;
		}
	} else {
		rc = FUNC2(dev_addr, SIO_SA_TX_COMMAND__A, (data & (~SIO_SA_TX_COMMAND_TX_INVERT__M)) | SIO_SA_TX_COMMAND_TX_ENABLE__M, 0);
		if (rc != 0) {
			FUNC3("error %d\n", rc);
			goto rw_error;
		}
	}

	/* config SMA_TX pin to smart antenna mode */
	rc = FUNC0(demod, &uio_cfg);
	if (rc != 0) {
		FUNC3("error %d\n", rc);
		goto rw_error;
	}
	rc = FUNC2(demod->my_i2c_dev_addr, SIO_PDR_SMA_TX_CFG__A, 0x13, 0);
	if (rc != 0) {
		FUNC3("error %d\n", rc);
		goto rw_error;
	}
	rc = FUNC2(demod->my_i2c_dev_addr, SIO_PDR_SMA_TX_GPIO_FNC__A, 0x03, 0);
	if (rc != 0) {
		FUNC3("error %d\n", rc);
		goto rw_error;
	}

	/*  Write magic word to disable pdr reg write               */
	rc = FUNC2(demod->my_i2c_dev_addr, SIO_TOP_COMM_KEY__A, 0x0000, 0);
	if (rc != 0) {
		FUNC3("error %d\n", rc);
		goto rw_error;
	}

	return 0;
rw_error:
	return rc;
}
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
typedef  int u32 ;
typedef  int u16 ;
struct i2c_device_addr {int dummy; } ;
struct drxu_code_info {int /*<<< orphan*/ * mc_file; } ;
struct drxj_data {int /*<<< orphan*/  aud_data; int /*<<< orphan*/  standard; } ;
struct drx_demod_instance {TYPE_1__* my_common_attr; int /*<<< orphan*/ * my_ext_attr; struct i2c_device_addr* my_i2c_dev_addr; } ;
struct drx_common_attr {int is_opened; int verify_microcode; int /*<<< orphan*/  scan_desired_lock; int /*<<< orphan*/  scan_demod_lock_timeout; int /*<<< orphan*/ * microcode_file; int /*<<< orphan*/  mpeg_cfg; } ;
struct drx_cfg_mpeg_output {int enable_mpeg_output; } ;
typedef  enum drx_power_mode { ____Placeholder_drx_power_mode } drx_power_mode ;
typedef  int /*<<< orphan*/  cfg_mpeg_output ;
struct TYPE_2__ {int is_opened; int /*<<< orphan*/  current_power_mode; } ;

/* Variables and functions */
 int ATV_TOP_STDBY_CVBS_STDBY_A2_ACTIVE ; 
 int ATV_TOP_STDBY_SIF_STDBY_STANDBY ; 
 int /*<<< orphan*/  ATV_TOP_STDBY__A ; 
 int /*<<< orphan*/  DRXJ_SCAN_TIMEOUT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DRX_LOCKED ; 
 int DRX_POWER_UP ; 
 int /*<<< orphan*/  DRX_STANDARD_UNKNOWN ; 
 int EINVAL ; 
 int SCU_COMM_EXEC_ACTIVE ; 
 int SCU_COMM_EXEC_STOP ; 
 int /*<<< orphan*/  SCU_COMM_EXEC__A ; 
 int /*<<< orphan*/  SCU_RAM_DRIVER_VER_HI__A ; 
 int /*<<< orphan*/  SCU_RAM_DRIVER_VER_LO__A ; 
 int SIO_CC_SOFT_RST_OSC__M ; 
 int SIO_CC_SOFT_RST_SYS__M ; 
 int /*<<< orphan*/  SIO_CC_SOFT_RST__A ; 
 int SIO_CC_UPDATE_KEY ; 
 int /*<<< orphan*/  SIO_CC_UPDATE__A ; 
 int /*<<< orphan*/  UCODE_UPLOAD ; 
 int /*<<< orphan*/  UCODE_VERIFY ; 
 int VERSION_MAJOR ; 
 int VERSION_MINOR ; 
 int VERSION_PATCH ; 
 int FUNC1 (struct drx_demod_instance*,int*) ; 
 int FUNC2 (struct drx_demod_instance*,struct drx_cfg_mpeg_output*) ; 
 int FUNC3 (struct drx_demod_instance*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct drx_demod_instance*,struct drxu_code_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2c_device_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  drxj_default_aud_data_g ; 
 int /*<<< orphan*/  FUNC6 (struct drxj_data*) ; 
 int /*<<< orphan*/  FUNC7 (struct drx_demod_instance*,int) ; 
 int FUNC8 (struct drx_demod_instance*) ; 
 int FUNC9 (struct drx_demod_instance*) ; 
 int /*<<< orphan*/  FUNC10 (struct drx_cfg_mpeg_output*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (struct drx_demod_instance*) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int FUNC14 (struct drx_demod_instance*,int) ; 
 int FUNC15 (struct drx_demod_instance*,int) ; 
 int FUNC16 (struct drx_demod_instance*) ; 

__attribute__((used)) static int FUNC17(struct drx_demod_instance *demod)
{
	struct i2c_device_addr *dev_addr = NULL;
	struct drxj_data *ext_attr = NULL;
	struct drx_common_attr *common_attr = NULL;
	u32 driver_version = 0;
	struct drxu_code_info ucode_info;
	struct drx_cfg_mpeg_output cfg_mpeg_output;
	int rc;
	enum drx_power_mode power_mode = DRX_POWER_UP;

	if ((demod == NULL) ||
	    (demod->my_common_attr == NULL) ||
	    (demod->my_ext_attr == NULL) ||
	    (demod->my_i2c_dev_addr == NULL) ||
	    (demod->my_common_attr->is_opened)) {
		return -EINVAL;
	}

	/* Check arguments */
	if (demod->my_ext_attr == NULL)
		return -EINVAL;

	dev_addr = demod->my_i2c_dev_addr;
	ext_attr = (struct drxj_data *) demod->my_ext_attr;
	common_attr = (struct drx_common_attr *) demod->my_common_attr;

	rc = FUNC1(demod, &power_mode);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}
	if (power_mode != DRX_POWER_UP) {
		rc = -EINVAL;
		FUNC13("failed to powerup device\n");
		goto rw_error;
	}

	/* has to be in front of setIqmAf and setOrxNsuAox */
	rc = FUNC8(demod);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	/*
	 * Soft reset of sys- and osc-clockdomain
	 *
	 * HACK: On windows, it writes a 0x07 here, instead of just 0x03.
	 * As we didn't load the firmware here yet, we should do the same.
	 * Btw, this is coherent with DRX-K, where we send reset codes
	 * for modulation (OFTM, in DRX-k), SYS and OSC clock domains.
	 */
	rc = FUNC5(dev_addr, SIO_CC_SOFT_RST__A, (0x04 | SIO_CC_SOFT_RST_SYS__M | SIO_CC_SOFT_RST_OSC__M), 0);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}
	rc = FUNC5(dev_addr, SIO_CC_UPDATE__A, SIO_CC_UPDATE_KEY, 0);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}
	FUNC11(1);

	/* TODO first make sure that everything keeps working before enabling this */
	/* PowerDownAnalogBlocks() */
	rc = FUNC5(dev_addr, ATV_TOP_STDBY__A, (~ATV_TOP_STDBY_CVBS_STDBY_A2_ACTIVE) | ATV_TOP_STDBY_SIF_STDBY_STANDBY, 0);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	rc = FUNC14(demod, false);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}
	rc = FUNC15(demod, false);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	rc = FUNC9(demod);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	/* disable mpegoutput pins */
	FUNC10(&cfg_mpeg_output, &common_attr->mpeg_cfg, sizeof(cfg_mpeg_output));
	cfg_mpeg_output.enable_mpeg_output = false;

	rc = FUNC2(demod, &cfg_mpeg_output);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}
	/* Stop AUD Inform SetAudio it will need to do all setting */
	rc = FUNC12(demod);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}
	/* Stop SCU */
	rc = FUNC5(dev_addr, SCU_COMM_EXEC__A, SCU_COMM_EXEC_STOP, 0);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	/* Upload microcode */
	if (common_attr->microcode_file != NULL) {
		/* Dirty trick to use common ucode upload & verify,
		   pretend device is already open */
		common_attr->is_opened = true;
		ucode_info.mc_file = common_attr->microcode_file;

		if (FUNC0(demod->my_common_attr->current_power_mode)) {
			FUNC13("Should powerup before loading the firmware.");
			return -EINVAL;
		}

		rc = FUNC4(demod, &ucode_info, UCODE_UPLOAD);
		if (rc != 0) {
			FUNC13("error %d while uploading the firmware\n", rc);
			goto rw_error;
		}
		if (common_attr->verify_microcode == true) {
			rc = FUNC4(demod, &ucode_info, UCODE_VERIFY);
			if (rc != 0) {
				FUNC13("error %d while verifying the firmware\n",
				       rc);
				goto rw_error;
			}
		}
		common_attr->is_opened = false;
	}

	/* Run SCU for a little while to initialize microcode version numbers */
	rc = FUNC5(dev_addr, SCU_COMM_EXEC__A, SCU_COMM_EXEC_ACTIVE, 0);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	/* Initialize scan timeout */
	common_attr->scan_demod_lock_timeout = DRXJ_SCAN_TIMEOUT;
	common_attr->scan_desired_lock = DRX_LOCKED;

	FUNC6(ext_attr);
	ext_attr->standard = DRX_STANDARD_UNKNOWN;

	rc = FUNC16(demod);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	/* Stamp driver version number in SCU data RAM in BCD code
	   Done to enable field application engineers to retrieve drxdriver version
	   via I2C from SCU RAM
	 */
	driver_version = (VERSION_MAJOR / 100) % 10;
	driver_version <<= 4;
	driver_version += (VERSION_MAJOR / 10) % 10;
	driver_version <<= 4;
	driver_version += (VERSION_MAJOR % 10);
	driver_version <<= 4;
	driver_version += (VERSION_MINOR % 10);
	driver_version <<= 4;
	driver_version += (VERSION_PATCH / 1000) % 10;
	driver_version <<= 4;
	driver_version += (VERSION_PATCH / 100) % 10;
	driver_version <<= 4;
	driver_version += (VERSION_PATCH / 10) % 10;
	driver_version <<= 4;
	driver_version += (VERSION_PATCH % 10);
	rc = FUNC5(dev_addr, SCU_RAM_DRIVER_VER_HI__A, (u16)(driver_version >> 16), 0);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}
	rc = FUNC5(dev_addr, SCU_RAM_DRIVER_VER_LO__A, (u16)(driver_version & 0xFFFF), 0);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	rc = FUNC3(demod, NULL);
	if (rc != 0) {
		FUNC13("error %d\n", rc);
		goto rw_error;
	}

	/* refresh the audio data structure with default */
	ext_attr->aud_data = drxj_default_aud_data_g;

	demod->my_common_attr->is_opened = true;
	FUNC7(demod, false);
	return 0;
rw_error:
	common_attr->is_opened = false;
	return rc;
}
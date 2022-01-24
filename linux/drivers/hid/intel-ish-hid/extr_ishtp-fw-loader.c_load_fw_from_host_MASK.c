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
struct TYPE_2__ {int xfer_mode; } ;
struct shim_fw_info {TYPE_1__ ldr_capability; } ;
struct ishtp_cl_data {int flag_retry; int /*<<< orphan*/  retry_count; struct ishtp_cl* loader_ishtp_cl; } ;
struct ishtp_cl {int dummy; } ;
struct firmware {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FILENAME_SIZE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int LOADER_XFER_MODE_DIRECT_DMA ; 
 int LOADER_XFER_MODE_ISHTP ; 
 scalar_t__ MAX_LOAD_ATTEMPTS ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (struct ishtp_cl_data*,char*) ; 
 int FUNC5 (struct ishtp_cl_data*) ; 
 int FUNC6 (struct ishtp_cl_data*,struct firmware const*,struct shim_fw_info) ; 
 int FUNC7 (struct ishtp_cl_data*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct ishtp_cl_data*,struct firmware const*,struct shim_fw_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct firmware const*) ; 
 int FUNC14 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct ishtp_cl_data *client_data)
{
	int rv;
	u32 xfer_mode;
	char *filename;
	const struct firmware *fw;
	struct shim_fw_info fw_info;
	struct ishtp_cl *loader_ishtp_cl = client_data->loader_ishtp_cl;

	client_data->flag_retry = false;

	filename = FUNC12(FILENAME_SIZE, GFP_KERNEL);
	if (!filename) {
		client_data->flag_retry = true;
		rv = -ENOMEM;
		goto end_error;
	}

	/* Get filename of the ISH firmware to be loaded */
	rv = FUNC4(client_data, filename);
	if (rv < 0)
		goto end_err_filename_buf_release;

	rv = FUNC14(&fw, filename, FUNC0(client_data));
	if (rv < 0)
		goto end_err_filename_buf_release;

	/* Step 1: Query Shim firmware loader properties */

	rv = FUNC9(client_data, fw, &fw_info);
	if (rv < 0)
		goto end_err_fw_release;

	/* Step 2: Send the main firmware image to be loaded, to ISH SRAM */

	xfer_mode = fw_info.ldr_capability.xfer_mode;
	if (xfer_mode & LOADER_XFER_MODE_DIRECT_DMA) {
		rv = FUNC6(client_data, fw, fw_info);
	} else if (xfer_mode & LOADER_XFER_MODE_ISHTP) {
		rv = FUNC7(client_data, fw);
	} else {
		FUNC1(FUNC0(client_data),
			"No transfer mode selected in firmware\n");
		rv = -EINVAL;
	}
	if (rv < 0)
		goto end_err_fw_release;

	/* Step 3: Start ISH main firmware exeuction */

	rv = FUNC5(client_data);
	if (rv < 0)
		goto end_err_fw_release;

	FUNC13(fw);
	FUNC2(FUNC0(client_data), "ISH firmware %s loaded\n",
		 filename);
	FUNC11(filename);
	return 0;

end_err_fw_release:
	FUNC13(fw);
end_err_filename_buf_release:
	FUNC11(filename);
end_error:
	/* Keep a count of retries, and give up after 3 attempts */
	if (client_data->flag_retry &&
	    client_data->retry_count++ < MAX_LOAD_ATTEMPTS) {
		FUNC3(FUNC0(client_data),
			 "ISH host firmware load failed %d. Resetting ISH, and trying again..\n",
			 rv);
		FUNC8(FUNC10(loader_ishtp_cl));
	} else {
		FUNC1(FUNC0(client_data),
			"ISH host firmware load failed %d\n", rv);
	}
	return rv;
}
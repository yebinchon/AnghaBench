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
struct usb_device {int dummy; } ;
struct uclogic_params_frame {int dummy; } ;
struct hid_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UCLOGIC_RDESC_BUTTONPAD_V1_ID ; 
 int /*<<< orphan*/  FUNC0 (struct hid_device*,char*,...) ; 
 struct usb_device* FUNC1 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 
 int FUNC5 (struct uclogic_params_frame*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uclogic_rdesc_buttonpad_v1_arr ; 
 int /*<<< orphan*/  uclogic_rdesc_buttonpad_v1_size ; 
 int FUNC6 (struct usb_device*,int,char*,size_t const) ; 

__attribute__((used)) static int FUNC7(
					struct uclogic_params_frame *frame,
					bool *pfound,
					struct hid_device *hdev)
{
	int rc;
	bool found = false;
	struct usb_device *usb_dev = FUNC1(hdev);
	char *str_buf = NULL;
	const size_t str_len = 16;

	/* Check arguments */
	if (frame == NULL || pfound == NULL || hdev == NULL) {
		rc = -EINVAL;
		goto cleanup;
	}

	/*
	 * Enable generic button mode
	 */
	str_buf = FUNC3(str_len, GFP_KERNEL);
	if (str_buf == NULL) {
		rc = -ENOMEM;
		goto cleanup;
	}

	rc = FUNC6(usb_dev, 123, str_buf, str_len);
	if (rc == -EPIPE) {
		FUNC0(hdev,
			"generic button -enabling string descriptor not found\n");
	} else if (rc < 0) {
		goto cleanup;
	} else if (FUNC4(str_buf, "HK On", rc) != 0) {
		FUNC0(hdev,
			"invalid response to enabling generic buttons: \"%s\"\n",
			str_buf);
	} else {
		FUNC0(hdev, "generic buttons enabled\n");
		rc = FUNC5(
				frame,
				uclogic_rdesc_buttonpad_v1_arr,
				uclogic_rdesc_buttonpad_v1_size,
				UCLOGIC_RDESC_BUTTONPAD_V1_ID);
		if (rc != 0)
			goto cleanup;
		found = true;
	}

	*pfound = found;
	rc = 0;
cleanup:
	FUNC2(str_buf);
	return rc;
}
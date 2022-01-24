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
struct uclogic_params_pen {int /*<<< orphan*/  inrange; int /*<<< orphan*/  id; int /*<<< orphan*/  desc_size; int /*<<< orphan*/ * desc_ptr; } ;
struct hid_device {int dummy; } ;
typedef  int s32 ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPIPE ; 
 int /*<<< orphan*/  UCLOGIC_PARAMS_PEN_INRANGE_INVERTED ; 
 int UCLOGIC_RDESC_PEN_PH_ID_NUM ; 
 size_t UCLOGIC_RDESC_PEN_PH_ID_PRESSURE_LM ; 
 size_t UCLOGIC_RDESC_PEN_PH_ID_X_LM ; 
 size_t UCLOGIC_RDESC_PEN_PH_ID_X_PM ; 
 size_t UCLOGIC_RDESC_PEN_PH_ID_Y_LM ; 
 size_t UCLOGIC_RDESC_PEN_PH_ID_Y_PM ; 
 int /*<<< orphan*/  UCLOGIC_RDESC_PEN_V1_ID ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hid_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct uclogic_params_pen*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ **,struct hid_device*,int,int const) ; 
 int /*<<< orphan*/  uclogic_rdesc_pen_v1_template_arr ; 
 int /*<<< orphan*/  uclogic_rdesc_pen_v1_template_size ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct uclogic_params_pen *pen,
				      bool *pfound,
				      struct hid_device *hdev)
{
	int rc;
	bool found = false;
	/* Buffer for (part of) the string descriptor */
	__u8 *buf = NULL;
	/* Minimum descriptor length required, maximum seen so far is 18 */
	const int len = 12;
	s32 resolution;
	/* Pen report descriptor template parameters */
	s32 desc_params[UCLOGIC_RDESC_PEN_PH_ID_NUM];
	__u8 *desc_ptr = NULL;

	/* Check arguments */
	if (pen == NULL || pfound == NULL || hdev == NULL) {
		rc = -EINVAL;
		goto cleanup;
	}

	/*
	 * Read string descriptor containing pen input parameters.
	 * The specific string descriptor and data were discovered by sniffing
	 * the Windows driver traffic.
	 * NOTE: This enables fully-functional tablet mode.
	 */
	rc = FUNC6(&buf, hdev, 100, len);
	if (rc == -EPIPE) {
		FUNC2(hdev,
			"string descriptor with pen parameters not found, assuming not compatible\n");
		goto finish;
	} else if (rc < 0) {
		FUNC3(hdev, "failed retrieving pen parameters: %d\n", rc);
		goto cleanup;
	} else if (rc != len) {
		FUNC2(hdev,
			"string descriptor with pen parameters has invalid length (got %d, expected %d), assuming not compatible\n",
			rc, len);
		goto finish;
	}

	/*
	 * Fill report descriptor parameters from the string descriptor
	 */
	desc_params[UCLOGIC_RDESC_PEN_PH_ID_X_LM] =
		FUNC1(buf + 2);
	desc_params[UCLOGIC_RDESC_PEN_PH_ID_Y_LM] =
		FUNC1(buf + 4);
	desc_params[UCLOGIC_RDESC_PEN_PH_ID_PRESSURE_LM] =
		FUNC1(buf + 8);
	resolution = FUNC1(buf + 10);
	if (resolution == 0) {
		desc_params[UCLOGIC_RDESC_PEN_PH_ID_X_PM] = 0;
		desc_params[UCLOGIC_RDESC_PEN_PH_ID_Y_PM] = 0;
	} else {
		desc_params[UCLOGIC_RDESC_PEN_PH_ID_X_PM] =
			desc_params[UCLOGIC_RDESC_PEN_PH_ID_X_LM] * 1000 /
			resolution;
		desc_params[UCLOGIC_RDESC_PEN_PH_ID_Y_PM] =
			desc_params[UCLOGIC_RDESC_PEN_PH_ID_Y_LM] * 1000 /
			resolution;
	}
	FUNC4(buf);
	buf = NULL;

	/*
	 * Generate pen report descriptor
	 */
	desc_ptr = FUNC7(
				uclogic_rdesc_pen_v1_template_arr,
				uclogic_rdesc_pen_v1_template_size,
				desc_params, FUNC0(desc_params));
	if (desc_ptr == NULL) {
		rc = -ENOMEM;
		goto cleanup;
	}

	/*
	 * Fill-in the parameters
	 */
	FUNC5(pen, 0, sizeof(*pen));
	pen->desc_ptr = desc_ptr;
	desc_ptr = NULL;
	pen->desc_size = uclogic_rdesc_pen_v1_template_size;
	pen->id = UCLOGIC_RDESC_PEN_V1_ID;
	pen->inrange = UCLOGIC_PARAMS_PEN_INRANGE_INVERTED;
	found = true;
finish:
	*pfound = found;
	rc = 0;
cleanup:
	FUNC4(desc_ptr);
	FUNC4(buf);
	return rc;
}
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
typedef  int u32 ;
struct occ {int /*<<< orphan*/  dev; int /*<<< orphan*/  sbefifo; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBADMSG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t OCC_SBE_STATUS_WORDS ; 
 int SBEFIFO_CMD_PUT_OCC_SRAM ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t,size_t*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int FUNC9(struct occ *occ, u32 address, const void *data,
		       ssize_t len)
{
	size_t cmd_len, buf_len, resp_len, resp_data_len;
	u32 data_len = ((len + 7) / 8) * 8;	/* must be multiples of 8 B */
	__be32 *buf;
	int rc;

	/*
	 * We use the same buffer for command and response, make
	 * sure it's big enough
	 */
	resp_len = OCC_SBE_STATUS_WORDS;
	cmd_len = (data_len >> 2) + 5;
	buf_len = FUNC5(cmd_len, resp_len);
	buf = FUNC4(buf_len << 2, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/*
	 * Magic sequence to do SBE putsram command. SBE will transfer
	 * data to specified SRAM address.
	 */
	buf[0] = FUNC1(cmd_len);
	buf[1] = FUNC1(SBEFIFO_CMD_PUT_OCC_SRAM);
	buf[2] = FUNC1(1);
	buf[3] = FUNC1(address);
	buf[4] = FUNC1(data_len);

	FUNC6(&buf[5], data, len);

	rc = FUNC8(occ->sbefifo, buf, cmd_len, buf, &resp_len);
	if (rc)
		goto free;

	rc = FUNC7(occ->sbefifo, SBEFIFO_CMD_PUT_OCC_SRAM,
				  buf, resp_len, &resp_len);
	if (rc)
		goto free;

	if (resp_len != 1) {
		FUNC2(occ->dev, "SRAM write response length invalid: %zd\n",
			resp_len);
		rc = -EBADMSG;
	} else {
		resp_data_len = FUNC0(buf[0]);
		if (resp_data_len != data_len) {
			FUNC2(occ->dev,
				"SRAM write expected %d bytes got %zd\n",
				data_len, resp_data_len);
			rc = -EBADMSG;
		}
	}

free:
	/* Convert positive SBEI status */
	if (rc > 0) {
		FUNC2(occ->dev, "SRAM write returned failure status: %08x\n",
			rc);
		rc = -EBADMSG;
	}

	FUNC3(buf);
	return rc;
}
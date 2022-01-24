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
 int OCC_SBE_STATUS_WORDS ; 
 int SBEFIFO_CMD_GET_OCC_SRAM ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,size_t,size_t*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t*) ; 

__attribute__((used)) static int FUNC8(struct occ *occ, u32 address, void *data, ssize_t len)
{
	u32 data_len = ((len + 7) / 8) * 8;	/* must be multiples of 8 B */
	size_t resp_len, resp_data_len;
	__be32 *resp, cmd[5];
	int rc;

	/*
	 * Magic sequence to do SBE getsram command. SBE will fetch data from
	 * specified SRAM address.
	 */
	cmd[0] = FUNC1(0x5);
	cmd[1] = FUNC1(SBEFIFO_CMD_GET_OCC_SRAM);
	cmd[2] = FUNC1(1);
	cmd[3] = FUNC1(address);
	cmd[4] = FUNC1(data_len);

	resp_len = (data_len >> 2) + OCC_SBE_STATUS_WORDS;
	resp = FUNC4(resp_len << 2, GFP_KERNEL);
	if (!resp)
		return -ENOMEM;

	rc = FUNC7(occ->sbefifo, cmd, 5, resp, &resp_len);
	if (rc)
		goto free;

	rc = FUNC6(occ->sbefifo, SBEFIFO_CMD_GET_OCC_SRAM,
				  resp, resp_len, &resp_len);
	if (rc)
		goto free;

	resp_data_len = FUNC0(resp[resp_len - 1]);
	if (resp_data_len != data_len) {
		FUNC2(occ->dev, "SRAM read expected %d bytes got %zd\n",
			data_len, resp_data_len);
		rc = -EBADMSG;
	} else {
		FUNC5(data, resp, len);
	}

free:
	/* Convert positive SBEI status */
	if (rc > 0) {
		FUNC2(occ->dev, "SRAM read returned failure status: %08x\n",
			rc);
		rc = -EBADMSG;
	}

	FUNC3(resp);
	return rc;
}
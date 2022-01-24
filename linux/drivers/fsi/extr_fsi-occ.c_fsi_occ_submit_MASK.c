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
typedef  scalar_t__ u8 ;
typedef  int u16 ;
struct occ_response {scalar_t__ seq_no; struct occ_response* data; int /*<<< orphan*/  return_status; int /*<<< orphan*/  data_length; } ;
struct occ {int /*<<< orphan*/  occ_lock; int /*<<< orphan*/  dev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENODEV ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  OCC_CMD_IN_PRG_WAIT_MS ; 
 int /*<<< orphan*/  OCC_RESP_CMD_IN_PRG ; 
 int /*<<< orphan*/  OCC_SRAM_CMD_ADDR ; 
 scalar_t__ OCC_SRAM_RSP_ADDR ; 
 int /*<<< orphan*/  OCC_TIMEOUT_MS ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct occ* FUNC2 (struct device*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 unsigned long FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct occ*,scalar_t__,struct occ_response*,int) ; 
 int FUNC8 (struct occ*,int /*<<< orphan*/ ,void const*,size_t) ; 
 int FUNC9 (struct occ*) ; 
 int FUNC10 (struct occ_response*,int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned long const) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (unsigned long,unsigned long) ; 

int FUNC14(struct device *dev, const void *request, size_t req_len,
		   void *response, size_t *resp_len)
{
	const unsigned long timeout = FUNC4(OCC_TIMEOUT_MS);
	const unsigned long wait_time =
		FUNC4(OCC_CMD_IN_PRG_WAIT_MS);
	struct occ *occ = FUNC2(dev);
	struct occ_response *resp = response;
	u8 seq_no;
	u16 resp_data_length;
	unsigned long start;
	int rc;

	if (!occ)
		return -ENODEV;

	if (*resp_len < 7) {
		FUNC0(dev, "Bad resplen %zd\n", *resp_len);
		return -EINVAL;
	}

	FUNC5(&occ->occ_lock);

	/* Extract the seq_no from the command (first byte) */
	seq_no = *(const u8 *)request;
	rc = FUNC8(occ, OCC_SRAM_CMD_ADDR, request, req_len);
	if (rc)
		goto done;

	rc = FUNC9(occ);
	if (rc)
		goto done;

	/* Read occ response header */
	start = jiffies;
	do {
		rc = FUNC7(occ, OCC_SRAM_RSP_ADDR, resp, 8);
		if (rc)
			goto done;

		if (resp->return_status == OCC_RESP_CMD_IN_PRG ||
		    resp->seq_no != seq_no) {
			rc = -ETIMEDOUT;

			if (FUNC13(jiffies, start + timeout)) {
				FUNC1(occ->dev, "resp timeout status=%02x "
					"resp seq_no=%d our seq_no=%d\n",
					resp->return_status, resp->seq_no,
					seq_no);
				goto done;
			}

			FUNC12(TASK_UNINTERRUPTIBLE);
			FUNC11(wait_time);
		}
	} while (rc);

	/* Extract size of response data */
	resp_data_length = FUNC3(&resp->data_length);

	/* Message size is data length + 5 bytes header + 2 bytes checksum */
	if ((resp_data_length + 7) > *resp_len) {
		rc = -EMSGSIZE;
		goto done;
	}

	FUNC0(dev, "resp_status=%02x resp_data_len=%d\n",
		resp->return_status, resp_data_length);

	/* Grab the rest */
	if (resp_data_length > 1) {
		/* already got 3 bytes resp, also need 2 bytes checksum */
		rc = FUNC7(occ, OCC_SRAM_RSP_ADDR + 8,
				 &resp->data[3], resp_data_length - 1);
		if (rc)
			goto done;
	}

	*resp_len = resp_data_length + 7;
	rc = FUNC10(resp, resp_data_length);

 done:
	FUNC6(&occ->occ_lock);

	return rc;
}
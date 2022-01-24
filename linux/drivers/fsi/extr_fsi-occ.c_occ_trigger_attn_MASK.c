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
struct occ {int /*<<< orphan*/  dev; int /*<<< orphan*/  sbefifo; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBADMSG ; 
 int OCC_SBE_STATUS_WORDS ; 
 int SBEFIFO_CMD_PUT_OCC_SRAM ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,scalar_t__*,size_t,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__*,int,scalar_t__*,size_t*) ; 

__attribute__((used)) static int FUNC6(struct occ *occ)
{
	__be32 buf[OCC_SBE_STATUS_WORDS];
	size_t resp_len, resp_data_len;
	int rc;

	FUNC0(OCC_SBE_STATUS_WORDS < 7);
	resp_len = OCC_SBE_STATUS_WORDS;

	buf[0] = FUNC2(0x5 + 0x2);        /* Chip-op length in words */
	buf[1] = FUNC2(SBEFIFO_CMD_PUT_OCC_SRAM);
	buf[2] = FUNC2(0x3);              /* Mode: Circular */
	buf[3] = FUNC2(0x0);              /* Address: ignore in mode 3 */
	buf[4] = FUNC2(0x8);              /* Data length in bytes */
	buf[5] = FUNC2(0x20010000);       /* Trigger OCC attention */
	buf[6] = 0;

	rc = FUNC5(occ->sbefifo, buf, 7, buf, &resp_len);
	if (rc)
		goto error;

	rc = FUNC4(occ->sbefifo, SBEFIFO_CMD_PUT_OCC_SRAM,
				  buf, resp_len, &resp_len);
	if (rc)
		goto error;

	if (resp_len != 1) {
		FUNC3(occ->dev, "SRAM attn response length invalid: %zd\n",
			resp_len);
		rc = -EBADMSG;
	} else {
		resp_data_len = FUNC1(buf[0]);
		if (resp_data_len != 8) {
			FUNC3(occ->dev,
				"SRAM attn expected 8 bytes got %zd\n",
				resp_data_len);
			rc = -EBADMSG;
		}
	}

 error:
	/* Convert positive SBEI status */
	if (rc > 0) {
		FUNC3(occ->dev, "SRAM attn returned failure status: %08x\n",
			rc);
		rc = -EBADMSG;
	}

	return rc;
}
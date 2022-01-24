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
typedef  unsigned char u8 ;
struct wacom {int /*<<< orphan*/  hdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_FEATURE_REPORT ; 
 unsigned char WAC_CMD_ICON_START ; 
 int /*<<< orphan*/  WAC_CMD_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,void const*,unsigned int const) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned int const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct wacom *wacom, int button_id, u8 xfer_id,
		const unsigned len, const void *img)
{
	unsigned char *buf;
	int i, retval;
	const unsigned chunk_len = len / 4; /* 4 chunks are needed to be sent */

	buf = FUNC1(chunk_len + 3 , GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/* Send 'start' command */
	buf[0] = WAC_CMD_ICON_START;
	buf[1] = 1;
	retval = FUNC3(wacom->hdev, HID_FEATURE_REPORT, buf, 2,
				  WAC_CMD_RETRIES);
	if (retval < 0)
		goto out;

	buf[0] = xfer_id;
	buf[1] = button_id & 0x07;
	for (i = 0; i < 4; i++) {
		buf[2] = i;
		FUNC2(buf + 3, img + i * chunk_len, chunk_len);

		retval = FUNC3(wacom->hdev, HID_FEATURE_REPORT,
					  buf, chunk_len + 3, WAC_CMD_RETRIES);
		if (retval < 0)
			break;
	}

	/* Send 'stop' */
	buf[0] = WAC_CMD_ICON_START;
	buf[1] = 0;
	FUNC3(wacom->hdev, HID_FEATURE_REPORT, buf, 2,
			 WAC_CMD_RETRIES);

out:
	FUNC0(buf);
	return retval;
}
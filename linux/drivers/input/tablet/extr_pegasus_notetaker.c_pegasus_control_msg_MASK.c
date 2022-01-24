#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct pegasus {TYPE_1__* usbdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NOTETAKER_REPORT_ID ; 
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int USB_DIR_OUT ; 
 int /*<<< orphan*/  USB_REQ_SET_REPORT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 
 scalar_t__ FUNC4 (int) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct pegasus *pegasus, u8 *data, int len)
{
	const int sizeof_buf = len + 2;
	int result;
	int error;
	u8 *cmd_buf;

	cmd_buf = FUNC2(sizeof_buf, GFP_KERNEL);
	if (!cmd_buf)
		return -ENOMEM;

	cmd_buf[0] = NOTETAKER_REPORT_ID;
	cmd_buf[1] = len;
	FUNC3(cmd_buf + 2, data, len);

	result = FUNC5(pegasus->usbdev,
				 FUNC6(pegasus->usbdev, 0),
				 USB_REQ_SET_REPORT,
				 USB_TYPE_VENDOR | USB_DIR_OUT,
				 0, 0, cmd_buf, sizeof_buf,
				 USB_CTRL_SET_TIMEOUT);

	FUNC1(cmd_buf);

	if (FUNC4(result != sizeof_buf)) {
		error = result < 0 ? result : -EIO;
		FUNC0(&pegasus->usbdev->dev, "control msg error: %d\n",
			error);
		return error;
	}

	return 0;
}
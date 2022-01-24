#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  controller; int /*<<< orphan*/ * dev; } ;
struct smscore_device_t {int gfp_buf_flags; int /*<<< orphan*/  ir_init_done; TYPE_2__ ir; } ;
struct TYPE_8__ {int /*<<< orphan*/  msg_length; } ;
struct sms_msg_data2 {TYPE_4__ x_msg_header; int /*<<< orphan*/ * msg_data; } ;
struct TYPE_5__ {int ir; } ;
struct TYPE_7__ {TYPE_1__ board_cfg; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_SMS_START_IR_REQ ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ SMS_DMA_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct smscore_device_t*) ; 
 int FUNC10 (struct smscore_device_t*,struct sms_msg_data2*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct smscore_device_t *coredev)
{
	int ir_io;
	int rc;
	void *buffer;

	coredev->ir.dev = NULL;
	ir_io = FUNC7(FUNC9(coredev))->board_cfg.ir;
	if (ir_io) {/* only if IR port exist we use IR sub-module */
		FUNC4("IR loading\n");
		rc = FUNC8(coredev);

		if	(rc != 0)
			FUNC5("Error initialization DTV IR sub-module\n");
		else {
			buffer = FUNC3(sizeof(struct sms_msg_data2) +
						SMS_DMA_ALIGNMENT,
						GFP_KERNEL | coredev->gfp_buf_flags);
			if (buffer) {
				struct sms_msg_data2 *msg =
				(struct sms_msg_data2 *)
				FUNC0(buffer);

				FUNC1(&msg->x_msg_header,
						MSG_SMS_START_IR_REQ,
						sizeof(struct sms_msg_data2));
				msg->msg_data[0] = coredev->ir.controller;
				msg->msg_data[1] = coredev->ir.timeout;

				rc = FUNC10(coredev, msg,
						msg->x_msg_header. msg_length,
						&coredev->ir_init_done);

				FUNC2(buffer);
			} else
				FUNC5("Sending IR initialization message failed\n");
		}
	} else
		FUNC6("IR port has not been detected\n");

	return 0;
}
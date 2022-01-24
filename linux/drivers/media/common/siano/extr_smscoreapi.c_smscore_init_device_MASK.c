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
struct smscore_device_t {int gfp_buf_flags; int /*<<< orphan*/  init_device_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_length; } ;
struct sms_msg_data {int* msg_data; TYPE_1__ x_msg_header; } ;

/* Variables and functions */
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_SMS_INIT_DEVICE_REQ ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ SMS_DMA_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__,int) ; 
 int FUNC4 (struct smscore_device_t*,struct sms_msg_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct smscore_device_t *coredev, int mode)
{
	void *buffer;
	struct sms_msg_data *msg;
	int rc = 0;

	buffer = FUNC3(sizeof(struct sms_msg_data) +
			SMS_DMA_ALIGNMENT, GFP_KERNEL | coredev->gfp_buf_flags);
	if (!buffer)
		return -ENOMEM;

	msg = (struct sms_msg_data *)FUNC0(buffer);
	FUNC1(&msg->x_msg_header, MSG_SMS_INIT_DEVICE_REQ,
			sizeof(struct sms_msg_data));
	msg->msg_data[0] = mode;

	rc = FUNC4(coredev, msg,
			msg->x_msg_header. msg_length,
			&coredev->init_device_done);

	FUNC2(buffer);
	return rc;
}
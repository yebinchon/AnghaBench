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
struct smscore_device_t {int gfp_buf_flags; int /*<<< orphan*/  version_ex_done; int /*<<< orphan*/  resume_done; } ;
struct sms_msg_hdr {int /*<<< orphan*/  msg_length; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIME ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  MSG_SMS_GET_VERSION_EX_REQ ; 
 scalar_t__ FUNC0 (void*) ; 
 scalar_t__ SMS_DMA_ALIGNMENT ; 
 int /*<<< orphan*/  FUNC1 (struct sms_msg_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (struct smscore_device_t*,struct sms_msg_hdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct smscore_device_t *coredev)
{
	void *buffer = FUNC3(sizeof(struct sms_msg_hdr) + SMS_DMA_ALIGNMENT,
			       GFP_KERNEL | coredev->gfp_buf_flags);
	struct sms_msg_hdr *msg =
		(struct sms_msg_hdr *) FUNC0(buffer);
	int rc;

	if (!buffer)
		return -ENOMEM;

	FUNC1(msg, MSG_SMS_GET_VERSION_EX_REQ,
		     sizeof(struct sms_msg_hdr));

	rc = FUNC6(coredev, msg, msg->msg_length,
					  &coredev->version_ex_done);
	if (rc == -ETIME) {
		FUNC5("MSG_SMS_GET_VERSION_EX_REQ failed first try\n");

		if (FUNC7(&coredev->resume_done,
						FUNC4(5000))) {
			rc = FUNC6(
				coredev, msg, msg->msg_length,
				&coredev->version_ex_done);
			if (rc < 0)
				FUNC5("MSG_SMS_GET_VERSION_EX_REQ failed second try, rc %d\n",
					rc);
		} else
			rc = -ETIME;
	}

	FUNC2(buffer);

	return rc;
}
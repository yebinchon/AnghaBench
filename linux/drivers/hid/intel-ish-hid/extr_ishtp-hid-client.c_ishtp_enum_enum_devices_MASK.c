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
struct ishtp_cl_data {int /*<<< orphan*/  num_hid_devices; int /*<<< orphan*/  cl_device; int /*<<< orphan*/  hid_dev_count; int /*<<< orphan*/  hid_devices; int /*<<< orphan*/  enum_devices_done; int /*<<< orphan*/  init_wait; } ;
struct ishtp_cl {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  command; } ;
struct hostif_msg {TYPE_1__ hdr; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  HOSTIF_DM_ENUM_DEVICES ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct ishtp_cl_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ishtp_cl*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct ishtp_cl_data* FUNC5 (struct ishtp_cl*) ; 
 int /*<<< orphan*/  FUNC6 (struct hostif_msg*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC8(struct ishtp_cl *hid_ishtp_cl)
{
	struct hostif_msg msg;
	struct ishtp_cl_data *client_data = FUNC5(hid_ishtp_cl);
	int retry_count;
	int rv;

	/* Send HOSTIF_DM_ENUM_DEVICES */
	FUNC6(&msg, 0, sizeof(struct hostif_msg));
	msg.hdr.command = HOSTIF_DM_ENUM_DEVICES;
	rv = FUNC3(hid_ishtp_cl, (unsigned char *)&msg,
			   sizeof(struct hostif_msg));
	if (rv)
		return rv;

	retry_count = 0;
	while (!client_data->enum_devices_done &&
	       retry_count < 10) {
		FUNC7(client_data->init_wait,
					 client_data->enum_devices_done,
					 3 * HZ);
		++retry_count;
		if (!client_data->enum_devices_done)
			/* Send HOSTIF_DM_ENUM_DEVICES */
			rv = FUNC3(hid_ishtp_cl,
					   (unsigned char *) &msg,
					   sizeof(struct hostif_msg));
	}
	if (!client_data->enum_devices_done) {
		FUNC1(FUNC0(client_data),
			"[hid-ish]: timed out waiting for enum_devices\n");
		return -ETIMEDOUT;
	}
	if (!client_data->hid_devices) {
		FUNC1(FUNC0(client_data),
			"[hid-ish]: failed to allocate HID dev structures\n");
		return -ENOMEM;
	}

	client_data->num_hid_devices = client_data->hid_dev_count;
	FUNC2(FUNC4(client_data->cl_device),
		"[hid-ish]: enum_devices_done OK, num_hid_devices=%d\n",
		client_data->num_hid_devices);

	return	0;
}
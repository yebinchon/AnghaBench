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
struct TYPE_2__ {scalar_t__ next; } ;
struct smscore_device_t {int num_buffers; int /*<<< orphan*/  entry; struct smscore_device_t* fw_buf; int /*<<< orphan*/  common_buffer_phys; struct smscore_device_t* common_buffer; int /*<<< orphan*/  common_buffer_size; int /*<<< orphan*/  device; scalar_t__ usb_device; TYPE_1__ buffers; } ;
struct smscore_buffer_t {int num_buffers; int /*<<< orphan*/  entry; struct smscore_buffer_t* fw_buf; int /*<<< orphan*/  common_buffer_phys; struct smscore_buffer_t* common_buffer; int /*<<< orphan*/  common_buffer_size; int /*<<< orphan*/  device; scalar_t__ usb_device; TYPE_1__ buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct smscore_device_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_smscore_deviceslock ; 
 int /*<<< orphan*/  FUNC1 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct smscore_device_t*) ; 
 int /*<<< orphan*/  FUNC10 (struct smscore_device_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct smscore_device_t*) ; 

void FUNC12(struct smscore_device_t *coredev)
{
	struct smscore_buffer_t *cb;
	int num_buffers = 0;
	int retry = 0;

	FUNC2(&g_smscore_deviceslock);

	/* Release input device (IR) resources */
	FUNC9(coredev);

	FUNC11(coredev);
	FUNC10(coredev, NULL, 0);

	/* at this point all buffers should be back
	 * onresponse must no longer be called */

	while (1) {
		while (!FUNC5(&coredev->buffers)) {
			cb = (struct smscore_buffer_t *) coredev->buffers.next;
			FUNC4(&cb->entry);
			FUNC1(cb);
			num_buffers++;
		}
		if (num_buffers == coredev->num_buffers)
			break;
		if (++retry > 10) {
			FUNC8("exiting although not all buffers released.\n");
			break;
		}

		FUNC7("waiting for %d buffer(s)\n",
			 coredev->num_buffers - num_buffers);
		FUNC3(&g_smscore_deviceslock);
		FUNC6(100);
		FUNC2(&g_smscore_deviceslock);
	}

	FUNC7("freed %d buffers\n", num_buffers);

	if (coredev->common_buffer) {
		if (coredev->usb_device)
			FUNC1(coredev->common_buffer);
		else
			FUNC0(coredev->device,
					  coredev->common_buffer_size,
					  coredev->common_buffer,
					  coredev->common_buffer_phys);
	}
	FUNC1(coredev->fw_buf);

	FUNC4(&coredev->entry);
	FUNC1(coredev);

	FUNC3(&g_smscore_deviceslock);

	FUNC7("device %p destroyed\n", coredev);
}
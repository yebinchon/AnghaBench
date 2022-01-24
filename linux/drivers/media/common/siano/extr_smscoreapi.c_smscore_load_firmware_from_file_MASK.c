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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct smscore_device_t {int device_flags; int gfp_buf_flags; int /*<<< orphan*/  context; int /*<<< orphan*/  device; } ;
struct sms_firmware {int dummy; } ;
struct firmware {scalar_t__ size; int /*<<< orphan*/  data; } ;
typedef  int (* loadfirmware_t ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  SMS_ALLOC_ALIGNMENT ; 
 int SMS_DEVICE_FAMILY2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char*,int /*<<< orphan*/ ) ; 
 char* FUNC8 (struct smscore_device_t*,int) ; 
 int FUNC9 (struct smscore_device_t*,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct smscore_device_t *coredev,
					   int mode,
					   loadfirmware_t loadfirmware_handler)
{
	int rc = -ENOENT;
	u8 *fw_buf;
	u32 fw_buf_size;
	const struct firmware *fw;

	char *fw_filename = FUNC8(coredev, mode);
	if (!fw_filename) {
		FUNC5("mode %d not supported on this device\n", mode);
		return -ENOENT;
	}
	FUNC4("Firmware name: %s\n", fw_filename);

	if (!loadfirmware_handler &&
	    !(coredev->device_flags & SMS_DEVICE_FAMILY2))
		return -EINVAL;

	rc = FUNC7(&fw, fw_filename, coredev->device);
	if (rc < 0) {
		FUNC5("failed to open firmware file '%s'\n", fw_filename);
		return rc;
	}
	FUNC4("read fw %s, buffer size=0x%zx\n", fw_filename, fw->size);
	fw_buf = FUNC2(FUNC0(fw->size + sizeof(struct sms_firmware),
			 SMS_ALLOC_ALIGNMENT), GFP_KERNEL | coredev->gfp_buf_flags);
	if (!fw_buf) {
		FUNC5("failed to allocate firmware buffer\n");
		rc = -ENOMEM;
	} else {
		FUNC3(fw_buf, fw->data, fw->size);
		fw_buf_size = fw->size;

		rc = (coredev->device_flags & SMS_DEVICE_FAMILY2) ?
			FUNC9(coredev, fw_buf, fw_buf_size)
			: loadfirmware_handler(coredev->context, fw_buf,
			fw_buf_size);
	}

	FUNC1(fw_buf);
	FUNC6(fw);

	return rc;
}
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
typedef  int u8 ;
struct firmware {int* data; } ;
struct elan_tp_data {scalar_t__ fw_validpage_count; size_t fw_signature_address; int /*<<< orphan*/  sysfs_mutex; int /*<<< orphan*/  product_id; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  signature ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETP_FW_NAME ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 struct elan_tp_data* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,char*) ; 
 int FUNC3 (struct elan_tp_data*,struct firmware const*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int const*,int const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 int FUNC10 (struct firmware const**,char*,struct device*) ; 

__attribute__((used)) static ssize_t FUNC11(struct device *dev,
				    struct device_attribute *attr,
				    const char *buf, size_t count)
{
	struct elan_tp_data *data = FUNC1(dev);
	const struct firmware *fw;
	char *fw_name;
	int error;
	const u8 *fw_signature;
	static const u8 signature[] = {0xAA, 0x55, 0xCC, 0x33, 0xFF, 0xFF};

	if (data->fw_validpage_count == 0)
		return -EINVAL;

	/* Look for a firmware with the product id appended. */
	fw_name = FUNC4(GFP_KERNEL, ETP_FW_NAME, data->product_id);
	if (!fw_name) {
		FUNC0(dev, "failed to allocate memory for firmware name\n");
		return -ENOMEM;
	}

	FUNC2(dev, "requesting fw '%s'\n", fw_name);
	error = FUNC10(&fw, fw_name, dev);
	FUNC5(fw_name);
	if (error) {
		FUNC0(dev, "failed to request firmware: %d\n", error);
		return error;
	}

	/* Firmware file must match signature data */
	fw_signature = &fw->data[data->fw_signature_address];
	if (FUNC6(fw_signature, signature, sizeof(signature)) != 0) {
		FUNC0(dev, "signature mismatch (expected %*ph, got %*ph)\n",
			(int)sizeof(signature), signature,
			(int)sizeof(signature), fw_signature);
		error = -EBADF;
		goto out_release_fw;
	}

	error = FUNC7(&data->sysfs_mutex);
	if (error)
		goto out_release_fw;

	error = FUNC3(data, fw);

	FUNC8(&data->sysfs_mutex);

out_release_fw:
	FUNC9(fw);
	return error ?: count;
}
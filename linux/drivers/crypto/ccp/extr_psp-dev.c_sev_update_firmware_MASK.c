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
typedef  int u64 ;
struct sev_data_download_firmware {int len; int /*<<< orphan*/  address; } ;
struct page {int dummy; } ;
struct firmware {int size; int /*<<< orphan*/  data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SEV_CMD_DOWNLOAD_FIRMWARE ; 
 int /*<<< orphan*/  FUNC1 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sev_data_download_firmware*) ; 
 struct page* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sev_data_download_firmware*,int /*<<< orphan*/ ,int) ; 
 struct sev_data_download_firmware* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct firmware const*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct sev_data_download_firmware*,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,struct firmware const**) ; 

__attribute__((used)) static int FUNC12(struct device *dev)
{
	struct sev_data_download_firmware *data;
	const struct firmware *firmware;
	int ret, error, order;
	struct page *p;
	u64 data_size;

	if (FUNC11(dev, &firmware) == -ENOENT) {
		FUNC4(dev, "No SEV firmware file present\n");
		return -1;
	}

	/*
	 * SEV FW expects the physical address given to it to be 32
	 * byte aligned. Memory allocated has structure placed at the
	 * beginning followed by the firmware being passed to the SEV
	 * FW. Allocate enough memory for data structure + alignment
	 * padding + SEV FW.
	 */
	data_size = FUNC0(sizeof(struct sev_data_download_firmware), 32);

	order = FUNC6(firmware->size + data_size);
	p = FUNC3(GFP_KERNEL, order);
	if (!p) {
		ret = -1;
		goto fw_err;
	}

	/*
	 * Copy firmware data to a kernel allocated contiguous
	 * memory region.
	 */
	data = FUNC8(p);
	FUNC7(FUNC8(p) + data_size, firmware->data, firmware->size);

	data->address = FUNC2(FUNC8(p) + data_size);
	data->len = firmware->size;

	ret = FUNC10(SEV_CMD_DOWNLOAD_FIRMWARE, data, &error);
	if (ret)
		FUNC4(dev, "Failed to update SEV firmware: %#x\n", error);
	else
		FUNC5(dev, "SEV firmware update successful\n");

	FUNC1(p, order);

fw_err:
	FUNC9(firmware);

	return ret;
}
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
struct mxt_data {int in_bootloader; int /*<<< orphan*/  irq; int /*<<< orphan*/  bl_completion; } ;
struct firmware {unsigned int size; int* data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MXT_BOOT_VALUE ; 
 int /*<<< orphan*/  MXT_COMMAND_RESET ; 
 int /*<<< orphan*/  MXT_FRAME_CRC_PASS ; 
 int /*<<< orphan*/  MXT_FW_RESET_TIME ; 
 unsigned int MXT_RESET_TIME ; 
 int /*<<< orphan*/  MXT_WAITING_BOOTLOAD_CMD ; 
 int /*<<< orphan*/  MXT_WAITING_FRAME_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,unsigned int,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct mxt_data* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int FUNC7 (struct mxt_data*,int*,unsigned int) ; 
 int FUNC8 (struct mxt_data*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct device*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC10 (struct mxt_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct mxt_data*) ; 
 int FUNC12 (struct mxt_data*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct mxt_data*,int) ; 
 int FUNC14 (struct mxt_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct mxt_data*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct firmware const*) ; 
 int FUNC18 (struct firmware const**,char const*,struct device*) ; 

__attribute__((used)) static int FUNC19(struct device *dev, const char *fn)
{
	struct mxt_data *data = FUNC2(dev);
	const struct firmware *fw = NULL;
	unsigned int frame_size;
	unsigned int pos = 0;
	unsigned int retry = 0;
	unsigned int frame = 0;
	int ret;

	ret = FUNC18(&fw, fn, dev);
	if (ret) {
		FUNC1(dev, "Unable to open firmware %s\n", fn);
		return ret;
	}

	/* Check for incorrect enc file */
	ret = FUNC9(dev, fw);
	if (ret)
		goto release_firmware;

	if (!data->in_bootloader) {
		/* Change to the bootloader mode */
		data->in_bootloader = true;

		ret = FUNC14(data, MXT_COMMAND_RESET,
				     MXT_BOOT_VALUE, false);
		if (ret)
			goto release_firmware;

		FUNC6(MXT_RESET_TIME);

		/* Do not need to scan since we know family ID */
		ret = FUNC12(data, 0);
		if (ret)
			goto release_firmware;

		FUNC10(data);
		FUNC11(data);
	} else {
		FUNC5(data->irq);
	}

	FUNC16(&data->bl_completion);

	ret = FUNC8(data, MXT_WAITING_BOOTLOAD_CMD, false);
	if (ret) {
		/* Bootloader may still be unlocked from previous attempt */
		ret = FUNC8(data, MXT_WAITING_FRAME_DATA, false);
		if (ret)
			goto disable_irq;
	} else {
		FUNC3(dev, "Unlocking bootloader\n");

		/* Unlock bootloader */
		ret = FUNC13(data, true);
		if (ret)
			goto disable_irq;
	}

	while (pos < fw->size) {
		ret = FUNC8(data, MXT_WAITING_FRAME_DATA, true);
		if (ret)
			goto disable_irq;

		frame_size = ((*(fw->data + pos) << 8) | *(fw->data + pos + 1));

		/* Take account of CRC bytes */
		frame_size += 2;

		/* Write one frame to device */
		ret = FUNC7(data, fw->data + pos, frame_size);
		if (ret)
			goto disable_irq;

		ret = FUNC8(data, MXT_FRAME_CRC_PASS, true);
		if (ret) {
			retry++;

			/* Back off by 20ms per retry */
			FUNC6(retry * 20);

			if (retry > 20) {
				FUNC1(dev, "Retry count exceeded\n");
				goto disable_irq;
			}
		} else {
			retry = 0;
			pos += frame_size;
			frame++;
		}

		if (frame % 50 == 0)
			FUNC0(dev, "Sent %d frames, %d/%zd bytes\n",
				frame, pos, fw->size);
	}

	/* Wait for flash. */
	ret = FUNC15(data, &data->bl_completion,
				      MXT_FW_RESET_TIME);
	if (ret)
		goto disable_irq;

	FUNC0(dev, "Sent %d frames, %d bytes\n", frame, pos);

	/*
	 * Wait for device to reset. Some bootloader versions do not assert
	 * the CHG line after bootloading has finished, so ignore potential
	 * errors.
	 */
	FUNC15(data, &data->bl_completion, MXT_FW_RESET_TIME);

	data->in_bootloader = false;

disable_irq:
	FUNC4(data->irq);
release_firmware:
	FUNC17(fw);
	return ret;
}
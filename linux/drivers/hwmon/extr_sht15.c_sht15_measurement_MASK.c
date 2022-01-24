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
struct sht15_data {scalar_t__ state; int val_status; int /*<<< orphan*/  dev; int /*<<< orphan*/  checksum_ok; scalar_t__ checksumming; int /*<<< orphan*/  data; int /*<<< orphan*/  wait_queue; int /*<<< orphan*/  read_work; int /*<<< orphan*/  interrupt_handled; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EIO ; 
 int ETIME ; 
 scalar_t__ SHT15_READING_NOTHING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct sht15_data*) ; 
 int FUNC11 (struct sht15_data*,int) ; 
 int FUNC12 (struct sht15_data*,int) ; 
 int FUNC13 (struct sht15_data*) ; 
 int FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct sht15_data *data,
			     int command,
			     int timeout_msecs)
{
	int ret;
	u8 previous_config;

	ret = FUNC11(data, command);
	if (ret)
		return ret;

	ret = FUNC5(data->data);
	if (ret)
		return ret;
	FUNC1(&data->interrupt_handled, 0);

	FUNC4(FUNC7(data->data));
	if (FUNC6(data->data) == 0) {
		FUNC3(FUNC7(data->data));
		/* Only relevant if the interrupt hasn't occurred. */
		if (!FUNC0(&data->interrupt_handled))
			FUNC9(&data->read_work);
	}
	ret = FUNC14(data->wait_queue,
				 (data->state == SHT15_READING_NOTHING),
				 FUNC8(timeout_msecs));
	if (data->state != SHT15_READING_NOTHING) { /* I/O error occurred */
		data->state = SHT15_READING_NOTHING;
		return -EIO;
	} else if (ret == 0) { /* timeout occurred */
		FUNC3(FUNC7(data->data));
		ret = FUNC10(data);
		if (ret)
			return ret;
		return -ETIME;
	}

	/*
	 *  Perform checksum validation on the received data.
	 *  Specification mentions that in case a checksum verification fails,
	 *  a soft reset command must be sent to the device.
	 */
	if (data->checksumming && !data->checksum_ok) {
		previous_config = data->val_status & 0x07;
		ret = FUNC13(data);
		if (ret)
			return ret;
		if (previous_config) {
			ret = FUNC12(data, previous_config);
			if (ret) {
				FUNC2(data->dev,
					"CRC validation failed, unable "
					"to restore device settings\n");
				return ret;
			}
		}
		return -EAGAIN;
	}

	return 0;
}
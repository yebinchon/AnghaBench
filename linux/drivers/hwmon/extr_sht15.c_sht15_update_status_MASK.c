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
struct sht15_data {int status_valid; int checksum_ok; int val_status; int /*<<< orphan*/  read_lock; scalar_t__ last_status; int /*<<< orphan*/  dev; scalar_t__ checksumming; } ;

/* Variables and functions */
 int EAGAIN ; 
 int HZ ; 
 int SHT15_READ_STATUS ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sht15_data*) ; 
 int FUNC5 (struct sht15_data*,int*,int) ; 
 int FUNC6 (struct sht15_data*) ; 
 int FUNC7 (struct sht15_data*) ; 
 int FUNC8 (struct sht15_data*,int) ; 
 int FUNC9 (struct sht15_data*,int) ; 
 int FUNC10 (struct sht15_data*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct sht15_data *data)
{
	int ret = 0;
	u8 status;
	u8 previous_config;
	u8 dev_checksum = 0;
	u8 checksum_vals[2];
	int timeout = HZ;

	FUNC2(&data->read_lock);
	if (FUNC11(jiffies, data->last_status + timeout)
			|| !data->status_valid) {
		ret = FUNC8(data, SHT15_READ_STATUS);
		if (ret)
			goto unlock;
		status = FUNC7(data);

		if (data->checksumming) {
			FUNC4(data);
			dev_checksum = FUNC0(FUNC7(data));
			checksum_vals[0] = SHT15_READ_STATUS;
			checksum_vals[1] = status;
			data->checksum_ok = (FUNC5(data, checksum_vals, 2)
					== dev_checksum);
		}

		ret = FUNC6(data);
		if (ret)
			goto unlock;

		/*
		 * Perform checksum validation on the received data.
		 * Specification mentions that in case a checksum verification
		 * fails, a soft reset command must be sent to the device.
		 */
		if (data->checksumming && !data->checksum_ok) {
			previous_config = data->val_status & 0x07;
			ret = FUNC10(data);
			if (ret)
				goto unlock;
			if (previous_config) {
				ret = FUNC9(data, previous_config);
				if (ret) {
					FUNC1(data->dev,
						"CRC validation failed, unable "
						"to restore device settings\n");
					goto unlock;
				}
			}
			ret = -EAGAIN;
			goto unlock;
		}

		data->val_status = status;
		data->status_valid = true;
		data->last_status = jiffies;
	}

unlock:
	FUNC3(&data->read_lock);
	return ret;
}
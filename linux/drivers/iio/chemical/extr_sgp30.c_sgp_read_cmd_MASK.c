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
union sgp_reading {int /*<<< orphan*/  start; } ;
typedef  int /*<<< orphan*/  u8 ;
struct sgp_data {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;
typedef  enum sgp_cmd { ____Placeholder_sgp_cmd } sgp_cmd ;

/* Variables and functions */
 int EIO ; 
 int SGP_CMD_LEN ; 
 size_t SGP_CRC8_LEN ; 
 size_t SGP_WORD_LEN ; 
 int FUNC0 (struct i2c_client*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (struct i2c_client*,char const*,int) ; 
 int FUNC2 (struct sgp_data*,union sgp_reading*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct sgp_data *data, enum sgp_cmd cmd,
			union sgp_reading *buf, size_t word_count,
			unsigned long duration_us)
{
	int ret;
	struct i2c_client *client = data->client;
	size_t size = word_count * (SGP_WORD_LEN + SGP_CRC8_LEN);
	u8 *data_buf;

	ret = FUNC1(client, (const char *)&cmd, SGP_CMD_LEN);
	if (ret != SGP_CMD_LEN)
		return -EIO;
	FUNC3(duration_us, duration_us + 1000);

	if (word_count == 0)
		return 0;

	data_buf = &buf->start;
	ret = FUNC0(client, data_buf, size);
	if (ret < 0)
		return ret;
	if (ret != size)
		return -EIO;

	return FUNC2(data, buf, word_count);
}
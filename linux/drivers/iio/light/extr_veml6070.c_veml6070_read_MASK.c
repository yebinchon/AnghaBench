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
struct veml6070_data {int config; int /*<<< orphan*/  lock; int /*<<< orphan*/  client1; int /*<<< orphan*/  client2; } ;

/* Variables and functions */
 int VEML6070_COMMAND_SD ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct veml6070_data *data)
{
	int ret;
	u8 msb, lsb;

	FUNC3(&data->lock);

	/* disable shutdown */
	ret = FUNC1(data->client1,
	    data->config & ~VEML6070_COMMAND_SD);
	if (ret < 0)
		goto out;

	FUNC2(125 + 10); /* measurement takes up to 125 ms for IT 1x */

	ret = FUNC0(data->client2); /* read MSB, address 0x39 */
	if (ret < 0)
		goto out;
	msb = ret;

	ret = FUNC0(data->client1); /* read LSB, address 0x38 */
	if (ret < 0)
		goto out;
	lsb = ret;

	/* shutdown again */
	ret = FUNC1(data->client1, data->config);
	if (ret < 0)
		goto out;

	ret = (msb << 8) | lsb;

out:
	FUNC4(&data->lock);
	return ret;
}
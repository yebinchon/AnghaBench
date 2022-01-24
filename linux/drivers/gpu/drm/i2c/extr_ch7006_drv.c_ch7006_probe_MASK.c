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
typedef  int /*<<< orphan*/  val ;
typedef  int /*<<< orphan*/  uint8_t ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int dummy; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  CH7006_VERSION_ID ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_client*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct i2c_client*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i2c_client*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i2c_client*,int,int) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, const struct i2c_device_id *id)
{
	uint8_t addr = CH7006_VERSION_ID;
	uint8_t val;
	int ret;

	FUNC0(client, "\n");

	ret = FUNC5(client, &addr, sizeof(addr));
	if (ret < 0)
		goto fail;

	ret = FUNC4(client, &val, sizeof(val));
	if (ret < 0)
		goto fail;

	FUNC2(client, "Detected version ID: %x\n", val);

	/* I don't know what this is for, but otherwise I get no
	 * signal.
	 */
	FUNC3(client, 0x3d, 0x0);

	return 0;

fail:
	FUNC1(client, "Error %d reading version ID\n", ret);

	return -ENODEV;
}
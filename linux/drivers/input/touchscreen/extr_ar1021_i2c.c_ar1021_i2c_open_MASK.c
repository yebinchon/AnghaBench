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
struct input_dev {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  irq; } ;
struct ar1021_i2c {struct i2c_client* client; } ;
typedef  int /*<<< orphan*/  cmd_enable_touch ;

/* Variables and functions */
#define  AR1021_CMD 129 
#define  AR1021_CMD_ENABLE_TOUCH 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct i2c_client*,int const*,int) ; 
 struct ar1021_i2c* FUNC2 (struct input_dev*) ; 

__attribute__((used)) static int FUNC3(struct input_dev *dev)
{
	static const u8 cmd_enable_touch[] = {
		AR1021_CMD,
		0x01, /* number of bytes after this */
		AR1021_CMD_ENABLE_TOUCH
	};
	struct ar1021_i2c *ar1021 = FUNC2(dev);
	struct i2c_client *client = ar1021->client;
	int error;

	error = FUNC1(ar1021->client, cmd_enable_touch,
				sizeof(cmd_enable_touch));
	if (error < 0)
		return error;

	FUNC0(client->irq);

	return 0;
}
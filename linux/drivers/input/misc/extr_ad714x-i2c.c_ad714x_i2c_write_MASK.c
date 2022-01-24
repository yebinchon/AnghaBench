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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct ad714x_chip {void** xfer_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 void* FUNC0 (unsigned short) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct ad714x_chip *chip,
			    unsigned short reg, unsigned short data)
{
	struct i2c_client *client = FUNC3(chip->dev);
	int error;

	chip->xfer_buf[0] = FUNC0(reg);
	chip->xfer_buf[1] = FUNC0(data);

	error = FUNC2(client, (u8 *)chip->xfer_buf,
				2 * sizeof(*chip->xfer_buf));
	if (FUNC4(error < 0)) {
		FUNC1(&client->dev, "I2C write error: %d\n", error);
		return error;
	}

	return 0;
}
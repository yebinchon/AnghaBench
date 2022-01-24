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
struct ad714x_chip {int /*<<< orphan*/ * xfer_buf; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 struct i2c_client* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct ad714x_chip *chip,
			   unsigned short reg, unsigned short *data, size_t len)
{
	struct i2c_client *client = FUNC5(chip->dev);
	int i;
	int error;

	chip->xfer_buf[0] = FUNC1(reg);

	error = FUNC4(client, (u8 *)chip->xfer_buf,
				sizeof(*chip->xfer_buf));
	if (error >= 0)
		error = FUNC3(client, (u8 *)chip->xfer_buf,
					len * sizeof(*chip->xfer_buf));

	if (FUNC6(error < 0)) {
		FUNC2(&client->dev, "I2C read error: %d\n", error);
		return error;
	}

	for (i = 0; i < len; i++)
		data[i] = FUNC0(chip->xfer_buf[i]);

	return 0;
}
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
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct fts_data {int /*<<< orphan*/  access_lock; } ;

/* Variables and functions */
 unsigned short FTS_PAGE_SELECT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned short,...) ; 
 struct fts_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i2c_client*,unsigned short,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct i2c_client *client, unsigned short reg,
			  unsigned char value)
{
	int ret;
	unsigned char page = reg >> 8;
	struct fts_data *data = FUNC1(&client->dev);

	FUNC3(&data->access_lock);

	FUNC0(&client->dev, "page select - page: 0x%.02x\n", page);
	ret = FUNC2(client, FTS_PAGE_SELECT_REG, page);
	if (ret < 0)
		goto error;

	reg &= 0xFF;
	FUNC0(&client->dev,
		"write - reg: 0x%.02x: val: 0x%.02x\n", reg, value);
	ret = FUNC2(client, reg, value);

error:
	FUNC4(&data->access_lock);
	return ret;
}
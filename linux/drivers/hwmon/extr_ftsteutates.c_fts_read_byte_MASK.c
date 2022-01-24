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
 int /*<<< orphan*/  FTS_PAGE_SELECT_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned short,...) ; 
 struct fts_data* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i2c_client*,unsigned short) ; 
 int FUNC3 (struct i2c_client*,int /*<<< orphan*/ ,unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct i2c_client *client, unsigned short reg)
{
	int ret;
	unsigned char page = reg >> 8;
	struct fts_data *data = FUNC1(&client->dev);

	FUNC4(&data->access_lock);

	FUNC0(&client->dev, "page select - page: 0x%.02x\n", page);
	ret = FUNC3(client, FTS_PAGE_SELECT_REG, page);
	if (ret < 0)
		goto error;

	reg &= 0xFF;
	ret = FUNC2(client, reg);
	FUNC0(&client->dev, "read - reg: 0x%.02x: val: 0x%.02x\n", reg, ret);

error:
	FUNC5(&data->access_lock);
	return ret;
}
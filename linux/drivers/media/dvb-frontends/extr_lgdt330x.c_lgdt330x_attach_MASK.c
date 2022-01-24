#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct lgdt330x_config {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver; } ;
struct i2c_client {TYPE_1__ dev; } ;
struct i2c_board_info {struct lgdt330x_config* platform_data; int /*<<< orphan*/  addr; int /*<<< orphan*/  type; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_frontend {int dummy; } ;

/* Variables and functions */
 struct i2c_client* FUNC0 (struct i2c_adapter*,struct i2c_board_info*) ; 
 struct dvb_frontend* FUNC1 (struct i2c_client*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

struct dvb_frontend *FUNC3(const struct lgdt330x_config *_config,
				     u8 demod_address,
				     struct i2c_adapter *i2c)
{
	struct i2c_client *client;
	struct i2c_board_info board_info = {};
	struct lgdt330x_config config = *_config;

	FUNC2(board_info.type, "lgdt330x", sizeof(board_info.type));
	board_info.addr = demod_address;
	board_info.platform_data = &config;
	client = FUNC0(i2c, &board_info);
	if (!client || !client->dev.driver)
		return NULL;

	return FUNC1(client);
}
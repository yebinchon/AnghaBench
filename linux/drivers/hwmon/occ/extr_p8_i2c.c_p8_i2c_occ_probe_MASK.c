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
struct occ {int powr_sample_time_us; int poll_cmd_data; int /*<<< orphan*/  send_cmd; int /*<<< orphan*/ * bus_dev; } ;
struct p8_i2c_occ {struct occ occ; struct i2c_client* client; } ;
struct i2c_device_id {int dummy; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct occ*) ; 
 struct p8_i2c_occ* FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct occ*,char*) ; 
 int /*<<< orphan*/  p8_i2c_occ_send_cmd ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
			    const struct i2c_device_id *id)
{
	struct occ *occ;
	struct p8_i2c_occ *ctx = FUNC1(&client->dev, sizeof(*ctx),
					      GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->client = client;
	occ = &ctx->occ;
	occ->bus_dev = &client->dev;
	FUNC0(&client->dev, occ);

	occ->powr_sample_time_us = 250;
	occ->poll_cmd_data = 0x10;		/* P8 OCC poll data */
	occ->send_cmd = p8_i2c_occ_send_cmd;

	return FUNC2(occ, "p8_occ");
}
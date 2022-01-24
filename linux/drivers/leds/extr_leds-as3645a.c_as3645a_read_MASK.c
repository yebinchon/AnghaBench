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
struct as3645a {struct i2c_client* client; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct as3645a *flash, u8 addr)
{
	struct i2c_client *client = flash->client;
	int rval;

	rval = FUNC1(client, addr);

	FUNC0(&client->dev, "Read Addr:%02X Val:%02X %s\n", addr, rval,
		rval < 0 ? "fail" : "ok");

	return rval;
}
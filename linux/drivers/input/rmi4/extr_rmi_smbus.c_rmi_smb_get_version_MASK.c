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
struct rmi_smb_xport {struct i2c_client* client; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMB_PROTOCOL_VERSION_ADDRESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct rmi_smb_xport *rmi_smb)
{
	struct i2c_client *client = rmi_smb->client;
	int retval;

	/* Check if for SMBus new version device by reading version byte. */
	retval = FUNC1(client, SMB_PROTOCOL_VERSION_ADDRESS);
	if (retval < 0) {
		FUNC0(&client->dev, "failed to get SMBus version number!\n");
		return retval;
	}

	return retval + 1;
}
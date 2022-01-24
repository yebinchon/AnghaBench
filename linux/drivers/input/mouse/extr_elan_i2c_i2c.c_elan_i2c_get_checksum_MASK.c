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
typedef  int /*<<< orphan*/  u16 ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_I2C_FW_CHECKSUM_CMD ; 
 int /*<<< orphan*/  ETP_I2C_IAP_CHECKSUM_CMD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct i2c_client *client,
				 bool iap, u16 *csum)
{
	int error;
	u8 val[3];

	error = FUNC1(client,
				  iap ? ETP_I2C_IAP_CHECKSUM_CMD :
					ETP_I2C_FW_CHECKSUM_CMD,
				  val);
	if (error) {
		FUNC0(&client->dev, "failed to get %s checksum: %d\n",
			iap ? "IAP" : "FW", error);
		return error;
	}

	*csum = FUNC2((__le16 *)val);
	return 0;
}
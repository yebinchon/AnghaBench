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
typedef  int u16 ;
struct device {int dummy; } ;
struct i2c_client {struct device dev; } ;
typedef  int /*<<< orphan*/  page_store ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int EIO ; 
 int ETP_FW_IAP_INTF_ERR ; 
 int ETP_FW_IAP_PAGE_ERR ; 
 int ETP_FW_PAGE_SIZE ; 
 int /*<<< orphan*/  ETP_I2C_IAP_CTRL_CMD ; 
 int /*<<< orphan*/  ETP_I2C_IAP_REG_H ; 
 int /*<<< orphan*/  ETP_I2C_IAP_REG_L ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 int FUNC1 (struct i2c_client*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct i2c_client*,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct i2c_client *client,
				   const u8 *page, u16 checksum, int idx)
{
	struct device *dev = &client->dev;
	u8 page_store[ETP_FW_PAGE_SIZE + 4];
	u8 val[3];
	u16 result;
	int ret, error;

	page_store[0] = ETP_I2C_IAP_REG_L;
	page_store[1] = ETP_I2C_IAP_REG_H;
	FUNC4(&page_store[2], page, ETP_FW_PAGE_SIZE);
	/* recode checksum at last two bytes */
	FUNC6(checksum, &page_store[ETP_FW_PAGE_SIZE + 2]);

	ret = FUNC2(client, page_store, sizeof(page_store));
	if (ret != sizeof(page_store)) {
		error = ret < 0 ? ret : -EIO;
		FUNC0(dev, "Failed to write page %d: %d\n", idx, error);
		return error;
	}

	/* Wait for F/W to update one page ROM data. */
	FUNC5(35);

	error = FUNC1(client, ETP_I2C_IAP_CTRL_CMD, val);
	if (error) {
		FUNC0(dev, "Failed to read IAP write result: %d\n", error);
		return error;
	}

	result = FUNC3((__le16 *)val);
	if (result & (ETP_FW_IAP_PAGE_ERR | ETP_FW_IAP_INTF_ERR)) {
		FUNC0(dev, "IAP reports failed write: %04hx\n",
			result);
		return -EIO;
	}

	return 0;
}
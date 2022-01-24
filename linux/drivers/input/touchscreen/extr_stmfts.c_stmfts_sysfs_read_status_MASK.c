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
typedef  int u8 ;
struct stmfts_data {int /*<<< orphan*/  client; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  status ;
typedef  int ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  STMFTS_READ_STATUS ; 
 struct stmfts_data* FUNC0 (struct device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC3(struct device *dev,
				struct device_attribute *attr, char *buf)
{
	struct stmfts_data *sdata = FUNC0(dev);
	u8 status[4];
	int err;

	err = FUNC1(sdata->client, STMFTS_READ_STATUS,
					    sizeof(status), status);
	if (err)
		return err;

	return FUNC2(buf, "%#02x\n", status[0]);
}
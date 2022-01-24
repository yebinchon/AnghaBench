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
typedef  int uint8_t ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SM_CHIP_ID_LENGTH ; 
 int SM_CHIP_ID_OFFSET ; 
 int /*<<< orphan*/  SM_GET_CHIP_ID ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,char*,int,int,int,int,int,int,int,int,int,int,int,int) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev, struct device_attribute *attr,
			 char *buf)
{
	uint8_t *id_buf;
	int ret;

	id_buf = FUNC1(SM_CHIP_ID_LENGTH, GFP_KERNEL);
	if (!id_buf)
		return -ENOMEM;

	ret = FUNC2(id_buf, SM_CHIP_ID_LENGTH, SM_GET_CHIP_ID,
				 0, 0, 0, 0, 0);
	if (ret < 0) {
		FUNC0(id_buf);
		return ret;
	}

	ret = FUNC3(buf, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\n",
			id_buf[SM_CHIP_ID_OFFSET + 0],
			id_buf[SM_CHIP_ID_OFFSET + 1],
			id_buf[SM_CHIP_ID_OFFSET + 2],
			id_buf[SM_CHIP_ID_OFFSET + 3],
			id_buf[SM_CHIP_ID_OFFSET + 4],
			id_buf[SM_CHIP_ID_OFFSET + 5],
			id_buf[SM_CHIP_ID_OFFSET + 6],
			id_buf[SM_CHIP_ID_OFFSET + 7],
			id_buf[SM_CHIP_ID_OFFSET + 8],
			id_buf[SM_CHIP_ID_OFFSET + 9],
			id_buf[SM_CHIP_ID_OFFSET + 10],
			id_buf[SM_CHIP_ID_OFFSET + 11]);

	FUNC0(id_buf);

	return ret;
}
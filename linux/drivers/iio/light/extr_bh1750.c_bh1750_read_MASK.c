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
struct bh1750_data {unsigned long mtreg; int /*<<< orphan*/  client; struct bh1750_chip_info* chip_info; } ;
struct bh1750_chip_info {unsigned long mtreg_to_usec; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  BH1750_ONE_TIME_H_RES_MODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC4(struct bh1750_data *data, int *val)
{
	int ret;
	__be16 result;
	const struct bh1750_chip_info *chip_info = data->chip_info;
	unsigned long delay = chip_info->mtreg_to_usec * data->mtreg;

	/*
	 * BH1721 will enter continuous mode on receiving this command.
	 * Note, that this eliminates need for bh1750_resume().
	 */
	ret = FUNC2(data->client, BH1750_ONE_TIME_H_RES_MODE);
	if (ret < 0)
		return ret;

	FUNC3(delay + 15000, delay + 40000);

	ret = FUNC1(data->client, (char *)&result, 2);
	if (ret < 0)
		return ret;

	*val = FUNC0(result);

	return 0;
}
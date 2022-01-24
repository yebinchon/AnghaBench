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
struct isl29018_chip {int /*<<< orphan*/  regmap; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ISL29018_CMD1_OPMODE_SHIFT ; 
 int /*<<< orphan*/  ISL29018_CONV_TIME_MS ; 
 int /*<<< orphan*/  ISL29018_REG_ADD_COMMAND1 ; 
 int /*<<< orphan*/  ISL29018_REG_ADD_DATA_LSB ; 
 int /*<<< orphan*/  ISL29018_REG_ADD_DATA_MSB ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct device* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct isl29018_chip *chip, int mode)
{
	int status;
	unsigned int lsb;
	unsigned int msb;
	struct device *dev = FUNC3(chip->regmap);

	/* Set mode */
	status = FUNC5(chip->regmap, ISL29018_REG_ADD_COMMAND1,
			      mode << ISL29018_CMD1_OPMODE_SHIFT);
	if (status) {
		FUNC0(dev,
			"Error in setting operating mode err %d\n", status);
		return status;
	}
	FUNC2(ISL29018_CONV_TIME_MS);
	status = FUNC4(chip->regmap, ISL29018_REG_ADD_DATA_LSB, &lsb);
	if (status < 0) {
		FUNC0(dev,
			"Error in reading LSB DATA with err %d\n", status);
		return status;
	}

	status = FUNC4(chip->regmap, ISL29018_REG_ADD_DATA_MSB, &msb);
	if (status < 0) {
		FUNC0(dev,
			"Error in reading MSB DATA with error %d\n", status);
		return status;
	}
	FUNC1(dev, "MSB 0x%x and LSB 0x%x\n", msb, lsb);

	return (msb << 8) | lsb;
}
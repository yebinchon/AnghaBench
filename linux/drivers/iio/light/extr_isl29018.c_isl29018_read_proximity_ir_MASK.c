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
 int /*<<< orphan*/  ISL29018_CMD1_OPMODE_IR_ONCE ; 
 int /*<<< orphan*/  ISL29018_CMD1_OPMODE_PROX_ONCE ; 
 int /*<<< orphan*/  ISL29018_CMD2_SCHEME_MASK ; 
 int ISL29018_CMD2_SCHEME_SHIFT ; 
 int /*<<< orphan*/  ISL29018_REG_ADD_COMMAND2 ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int FUNC1 (struct isl29018_chip*,int /*<<< orphan*/ ) ; 
 struct device* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct isl29018_chip *chip, int scheme,
				      int *near_ir)
{
	int status;
	int prox_data = -1;
	int ir_data = -1;
	struct device *dev = FUNC2(chip->regmap);

	/* Do proximity sensing with required scheme */
	status = FUNC3(chip->regmap, ISL29018_REG_ADD_COMMAND2,
				    ISL29018_CMD2_SCHEME_MASK,
				    scheme << ISL29018_CMD2_SCHEME_SHIFT);
	if (status) {
		FUNC0(dev, "Error in setting operating mode\n");
		return status;
	}

	prox_data = FUNC1(chip,
					       ISL29018_CMD1_OPMODE_PROX_ONCE);
	if (prox_data < 0)
		return prox_data;

	if (scheme == 1) {
		*near_ir = prox_data;
		return 0;
	}

	ir_data = FUNC1(chip,
					     ISL29018_CMD1_OPMODE_IR_ONCE);
	if (ir_data < 0)
		return ir_data;

	if (prox_data >= ir_data)
		*near_ir = prox_data - ir_data;
	else
		*near_ir = 0;

	return 0;
}
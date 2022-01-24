#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct pca953x_chip {TYPE_1__* client; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pca953x_chip*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct pca953x_chip*,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct pca953x_chip *chip, int reg, u8 *val)
{
	u8 regaddr = FUNC2(chip, reg, 0, true, true);
	int ret;

	ret = FUNC3(chip->regmap, regaddr, val, FUNC0(chip));
	if (ret < 0) {
		FUNC1(&chip->client->dev, "failed writing register\n");
		return ret;
	}

	return 0;
}
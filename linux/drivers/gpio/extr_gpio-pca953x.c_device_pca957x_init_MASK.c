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
typedef  int /*<<< orphan*/  u32 ;
struct pca953x_chip {int dummy; } ;

/* Variables and functions */
 int MAX_BANK ; 
 int /*<<< orphan*/  FUNC0 (struct pca953x_chip*) ; 
 int /*<<< orphan*/  PCA957X_BKEN ; 
 int FUNC1 (struct pca953x_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pca953x_chip*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct pca953x_chip *chip, u32 invert)
{
	int ret;
	u8 val[MAX_BANK];

	ret = FUNC1(chip, invert);
	if (ret)
		goto out;

	/* To enable register 6, 7 to control pull up and pull down */
	FUNC2(val, 0x02, FUNC0(chip));
	ret = FUNC3(chip, PCA957X_BKEN, val);
	if (ret)
		goto out;

	return 0;
out:
	return ret;
}
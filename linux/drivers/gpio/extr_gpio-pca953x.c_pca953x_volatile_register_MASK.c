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
typedef  int /*<<< orphan*/  u32 ;
struct pca953x_chip {int driver_data; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ PCA953X_TYPE ; 
 int /*<<< orphan*/  PCA953x_BANK_INPUT ; 
 int /*<<< orphan*/  PCA957x_BANK_INPUT ; 
 int /*<<< orphan*/  PCAL9xxx_BANK_IRQ_STAT ; 
 scalar_t__ FUNC0 (int) ; 
 int PCA_PCAL ; 
 struct pca953x_chip* FUNC1 (struct device*) ; 
 int FUNC2 (struct pca953x_chip*,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct device *dev, unsigned int reg)
{
	struct pca953x_chip *chip = FUNC1(dev);
	u32 bank;

	if (FUNC0(chip->driver_data) == PCA953X_TYPE)
		bank = PCA953x_BANK_INPUT;
	else
		bank = PCA957x_BANK_INPUT;

	if (chip->driver_data & PCA_PCAL)
		bank |= PCAL9xxx_BANK_IRQ_STAT;

	return FUNC2(chip, reg, bank);
}
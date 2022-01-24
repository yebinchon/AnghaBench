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
struct pca953x_chip {int dummy; } ;
struct gpio_chip {int dummy; } ;

/* Variables and functions */
 int ENOTSUPP ; 
#define  PIN_CONFIG_BIAS_PULL_DOWN 129 
#define  PIN_CONFIG_BIAS_PULL_UP 128 
 struct pca953x_chip* FUNC0 (struct gpio_chip*) ; 
 int FUNC1 (struct pca953x_chip*,unsigned int,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct gpio_chip *gc, unsigned int offset,
				   unsigned long config)
{
	struct pca953x_chip *chip = FUNC0(gc);

	switch (config) {
	case PIN_CONFIG_BIAS_PULL_UP:
	case PIN_CONFIG_BIAS_PULL_DOWN:
		return FUNC1(chip, offset, config);
	default:
		return -ENOTSUPP;
	}
}
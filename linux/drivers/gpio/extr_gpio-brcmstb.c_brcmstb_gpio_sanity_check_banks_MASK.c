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
struct resource {int dummy; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int GIO_BANK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,int) ; 
 int FUNC1 (struct device_node*,char*) ; 
 int FUNC2 (struct resource*) ; 

__attribute__((used)) static int FUNC3(struct device *dev,
		struct device_node *np, struct resource *res)
{
	int res_num_banks = FUNC2(res) / GIO_BANK_SIZE;
	int num_banks =
		FUNC1(np, "brcm,gpio-bank-widths");

	if (res_num_banks != num_banks) {
		FUNC0(dev, "Mismatch in banks: res had %d, bank-widths had %d\n",
				res_num_banks, num_banks);
		return -EINVAL;
	} else {
		return 0;
	}
}
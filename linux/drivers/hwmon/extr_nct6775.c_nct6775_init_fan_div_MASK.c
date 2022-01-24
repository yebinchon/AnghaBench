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
struct nct6775_data {int* fan_div; int has_fan; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nct6775_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct nct6775_data*,int) ; 

__attribute__((used)) static void FUNC4(struct nct6775_data *data)
{
	int i;

	FUNC2(data);
	/*
	 * For all fans, start with highest divider value if the divider
	 * register is not initialized. This ensures that we get a
	 * reading from the fan count register, even if it is not optimal.
	 * We'll compute a better divider later on.
	 */
	for (i = 0; i < FUNC0(data->fan_div); i++) {
		if (!(data->has_fan & FUNC1(i)))
			continue;
		if (data->fan_div[i] == 0) {
			data->fan_div[i] = 7;
			FUNC3(data, i);
		}
	}
}
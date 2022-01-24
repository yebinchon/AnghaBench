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
struct nct6683_data {int* in_index; int /*<<< orphan*/  customer_id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NCT6683_CUSTOMER_ID_INTEL ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct nct6683_data *data, int nr, int index)
{
	int ch = data->in_index[index];
	int reg = -EINVAL;

	switch (nr) {
	case 0:
		reg = FUNC0(ch);
		break;
	case 1:
		if (data->customer_id != NCT6683_CUSTOMER_ID_INTEL)
			reg = FUNC2(ch);
		break;
	case 2:
		if (data->customer_id != NCT6683_CUSTOMER_ID_INTEL)
			reg = FUNC1(ch);
		break;
	default:
		break;
	}
	return reg;
}
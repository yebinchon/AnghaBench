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
struct nct6683_data {int* temp_index; int customer_id; } ;

/* Variables and functions */
 int EINVAL ; 
#define  NCT6683_CUSTOMER_ID_INTEL 129 
#define  NCT6683_CUSTOMER_ID_MITAC 128 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct nct6683_data *data, int nr, int index)
{
	int ch = data->temp_index[index];
	int reg = -EINVAL;

	switch (data->customer_id) {
	case NCT6683_CUSTOMER_ID_INTEL:
		switch (nr) {
		default:
		case 1:	/* max */
			reg = FUNC1(ch);
			break;
		case 3:	/* crit */
			reg = FUNC0(ch);
			break;
		}
		break;
	case NCT6683_CUSTOMER_ID_MITAC:
	default:
		switch (nr) {
		default:
		case 0:	/* min */
			reg = FUNC3(ch);
			break;
		case 1:	/* max */
			reg = FUNC5(ch);
			break;
		case 2:	/* hyst */
			reg = FUNC4(ch);
			break;
		case 3:	/* crit */
			reg = FUNC2(ch);
			break;
		}
		break;
	}
	return reg;
}